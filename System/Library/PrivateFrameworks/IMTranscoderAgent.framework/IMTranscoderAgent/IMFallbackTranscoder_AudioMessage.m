@interface IMFallbackTranscoder_AudioMessage
- (id)_tmpOutputFileURL;
- (void)_failWithOSStatusErrorCode:(int)a3 description:(id)a4 completion:(id)a5;
- (void)transcodeOpusFile:(id)a3 completionBlock:(id)a4;
@end

@implementation IMFallbackTranscoder_AudioMessage

- (void)transcodeOpusFile:(id)a3 completionBlock:(id)a4
{
  v101 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    outExtAudioFile = 0;
    v7 = ExtAudioFileOpenURL(a3, &outExtAudioFile);
    v14 = v7;
    if (outExtAudioFile)
    {
      v15 = v7 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v21 = objc_msgSend__tmpOutputFileURL(self, v8, v9, v10, v11, v12, v13);
      v94 = 0;
      v28 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v22, v23, v24, v25, v26, v27);
      PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v21, v29, v30, v31, v32, v33, v34);
      objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v28, v36, PathComponent, 1, 0, &v94, v37);
      if (v94)
      {
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v98 = v21;
            v99 = 2112;
            v100 = v94;
            _os_log_impl(&dword_254811000, v38, OS_LOG_TYPE_INFO, "IMFallbackTranscoder_AudioMessage: error creating directory for path %@ with error %@", buf, 0x16u);
          }
        }

        (*(a4 + 2))(a4, 0, 0, v94, 0, 1);
      }

      else
      {
        v93 = 0;
        memset(&inStreamDesc.mFormatID, 0, 32);
        inStreamDesc.mSampleRate = 8000.0;
        inStreamDesc.mFormatID = 1935764850;
        inStreamDesc.mChannelsPerFrame = 1;
        v39 = ExtAudioFileCreateWithURL(v21, 0x616D7266u, &inStreamDesc, 0, 1u, &v93);
        if (!v93 || v39)
        {
          ExtAudioFileDispose(outExtAudioFile);
          if (v93)
          {
            ExtAudioFileDispose(v93);
          }

          v49 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v44, @"Creating new file at path: %@", v45, v46, v47, v48, v21);
          objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v50, v39, v49, a4, v51, v52);
        }

        else
        {
          inPropertyData = xmmword_254832F70;
          v90 = unk_254832F80;
          v91 = 32;
          v40 = ExtAudioFileSetProperty(v93, 0x63666D74u, 0x28u, &inPropertyData);
          if (v40)
          {
            ExtAudioFileDispose(outExtAudioFile);
            ExtAudioFileDispose(v93);
            objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v41, v40, @"ExtAudioFileSetProperty / kExtAudioFileProperty_ClientDataFormat for AMR", a4, v42, v43);
          }

          else
          {
            v54 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, &inPropertyData);
            if (v54)
            {
              ExtAudioFileDispose(outExtAudioFile);
              ExtAudioFileDispose(v93);
              objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v55, v54, @"ExtAudioFileSetProperty / kExtAudioFileProperty_ClientDataFormat for Opus", a4, v56, v57);
            }

            else
            {
              outPropertyData = 0;
              v87 = 6700;
              ioPropertyDataSize = 8;
              Property = ExtAudioFileGetProperty(v93, 0x61636E76u, &ioPropertyDataSize, &outPropertyData);
              if (Property)
              {
                ExtAudioFileDispose(outExtAudioFile);
                ExtAudioFileDispose(v93);
                objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v59, Property, @"ExtAudioFileGetProperty / kExtAudioFileProperty_AudioConverter for AMR", a4, v60, v61);
              }

              else
              {
                v62 = AudioConverterSetProperty(outPropertyData, 0x62726174u, 4u, &v87);
                if (v62)
                {
                  ExtAudioFileDispose(outExtAudioFile);
                  ExtAudioFileDispose(v93);
                  objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v63, v62, @"AudioConverterSetProperty / kAudioConverterEncodeBitRate for outConverter", a4, v64, v65);
                }

                else
                {
                  v85 = 0;
                  v66 = ExtAudioFileSetProperty(v93, 0x61636366u, 8u, &v85);
                  if (v66)
                  {
                    ExtAudioFileDispose(outExtAudioFile);
                    ExtAudioFileDispose(v93);
                    objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v67, v66, @"ExtAudioFileSetProperty / kExtAudioFileProperty_ConverterConfig for AMR", a4, v68, v69);
                  }

                  else
                  {
                    bzero(buf, 0x8000uLL);
                    while (1)
                    {
                      *(&ioData.mNumberBuffers + 1) = 0;
                      *&ioData.mBuffers[0].mNumberChannels = 0x800000000001;
                      ioData.mBuffers[0].mData = buf;
                      ioNumberFrames = 0x8000u / DWORD2(v90);
                      ioData.mNumberBuffers = 1;
                      v70 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &ioData);
                      if (v70)
                      {
                        ExtAudioFileDispose(outExtAudioFile);
                        ExtAudioFileDispose(v93);
                        objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v75, v70, @"ExtAudioFileRead", a4, v76, v77);
                        goto LABEL_23;
                      }

                      if (!ioNumberFrames)
                      {
                        break;
                      }

                      v71 = ExtAudioFileWrite(v93, ioNumberFrames, &ioData);
                      if (v71)
                      {
                        ExtAudioFileDispose(outExtAudioFile);
                        ExtAudioFileDispose(v93);
                        objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v72, v71, @"ExtAudioFileWrite", a4, v73, v74);
                        goto LABEL_23;
                      }
                    }

                    ExtAudioFileDispose(outExtAudioFile);
                    ExtAudioFileDispose(v93);
                    v96 = v21;
                    v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v78, &v96, 1, v79, v80, v81);
                    (*(a4 + 2))(a4, v82, 0, 0, 1, 1);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"Opening Opus file at path %@", v10, v11, v12, v13, a3);
      objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v17, v14, v16, a4, v18, v19);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v20, OS_LOG_TYPE_INFO, "IMFallbackTranscoder_AudioMessage: nil filePath", buf, 2u);
      }
    }

    (*(a4 + 2))(a4, 0, 0, 0, 0, 1);
  }

LABEL_23:
  v53 = *MEMORY[0x277D85DE8];
}

- (id)_tmpOutputFileURL
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = IMSafeTemporaryDirectory();
  v9 = objc_msgSend_path(v2, v3, v4, v5, v6, v7, v8);
  v33[1] = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, v15, v9);
  v33[2] = @"Audio Message.amr";
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v33, 3, v17, v18, v19);
  v26 = objc_msgSend_pathWithComponents_(MEMORY[0x277CCACA8], v21, v20, v22, v23, v24, v25);
  result = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v27, v26, 0, v28, v29, v30);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_failWithOSStatusErrorCode:(int)a3 description:(id)a4 completion:(id)a5
{
  v6 = a4;
  v18 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    IMLogBacktrace();
    v6 = @"NO DESCRIPTION!";
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 1024;
      v17 = a3;
      _os_log_impl(&dword_254811000, v11, OS_LOG_TYPE_INFO, "IMFallbackTranscoder_AudioMessage: %@ failed with error code %d", &v14, 0x12u);
    }
  }

  if (a5)
  {
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, *MEMORY[0x277CCA590], a3, 0, v9, v10);
    (*(a5 + 2))(a5, 0, 0, v12, 0, 1);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end