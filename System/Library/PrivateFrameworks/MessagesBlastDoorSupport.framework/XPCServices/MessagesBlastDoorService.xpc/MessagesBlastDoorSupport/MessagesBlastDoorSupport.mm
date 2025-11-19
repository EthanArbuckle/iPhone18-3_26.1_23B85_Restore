void sub_100007AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100007B28(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE0B8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100007C6C;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0B90;
    v6 = 0;
    qword_1000FE0B8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE0B8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("WKUIBlastDoorDataSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C0EA8();
  }

  qword_1000FE0B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100007C6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000FE0B8 = result;
  return result;
}

void sub_1000096B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000096E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    v12 = *(*(a1 + 40) + 8);
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *a7 = 1;
  }

  return result;
}

id sub_100009BE8()
{
  if (qword_1000FE0C8 != -1)
  {
    sub_1000C0ED0();
  }

  v1 = qword_1000FE0C0;

  return v1;
}

void sub_100009FC8(id a1)
{
  v1 = +[NSCharacterSet controlCharacterSet];
  v2 = [v1 mutableCopy];

  [v2 invert];
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  [v2 invert];
  WORD2(v7) = 6158;
  LODWORD(v7) = 537731084;
  v4 = [[NSString alloc] initWithCharactersNoCopy:&v7 length:3 freeWhenDone:0];
  [v2 removeCharactersInString:{v4, v7}];
  v5 = [v2 copy];
  v6 = qword_1000FE0C0;
  qword_1000FE0C0 = v5;
}

void sub_10000A0D0(id a1)
{
  v1 = sub_100009BE8();
  v4 = [v1 mutableCopy];

  [v4 addCharactersInString:MBDIMAttachmentCharacterString];
  [v4 addCharactersInString:MBDIMBreadcrumbCharacterString];
  v2 = [v4 copy];
  v3 = qword_1000FE0D0;
  qword_1000FE0D0 = v2;
}

void sub_10000A274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000A294(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE0E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000A3D8;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0C50;
    v6 = 0;
    qword_1000FE0E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE0E8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SWCollaborationClearNoticeTransmissionMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C0EF8();
  }

  qword_1000FE0E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000A3D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000FE0E8 = result;
  return result;
}

void sub_10000A90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000AA28(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE0F8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000AB6C;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0C68;
    v6 = 0;
    qword_1000FE0F8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE0F8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FKOrderMessagesPreviewMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C0F20();
  }

  qword_1000FE0F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000AB6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000FE0F8 = result;
  return result;
}

void sub_10000B73C(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKey:v8];
  if (v7)
  {
    [v6 setObject:v7 forKey:v8];
    [v5 removeObjectForKey:v8];
  }
}

id MBDIMCopyNormalizedAttributes(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 & 1) != 0 || (a3)
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [v6 keyEnumerator];
    v8 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];
          if (a2)
          {
            v14 = [v12 lowercaseString];

            v12 = v14;
          }

          if (a3)
          {
            v15 = [v13 lowercaseString];

            v13 = v15;
          }

          [v7 setObject:v13 forKey:v12];
        }

        v9 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = [v5 copy];
  }

  return v7;
}

double transcriptWaveformWidthForDuration(double a1)
{
  if (a1 >= 20.0)
  {
    return 150.0;
  }

  v1 = (log2(a1 + 1.0) * 50.0 / 4.39231742);
  if (v1 <= 0x19)
  {
    v1 = 25;
  }

  return (3 * v1);
}

AudioMetadata *audioMetadataForFileURL(void *a1)
{
  v67 = a1;
  v66 = objc_alloc_init(AudioMetadata);
  v65 = 0;
  v64 = 0;
  outExtAudioFile = 0;
  memset(&__b, 0, sizeof(__b));
  v63 = malloc_type_malloc(0x8000uLL, 0x1000040BDFB0063uLL);
  if (v63)
  {
    if (v67)
    {
      ExtAudioFileOpenURL(v67, &outExtAudioFile);
      if (outExtAudioFile)
      {
        outPropertyData = 0;
        ioPropertyDataSize = 8;
        Property = ExtAudioFileGetProperty(outExtAudioFile, 0x6166696Cu, &ioPropertyDataSize, &outPropertyData);
        if (Property)
        {
          v54 = sub_10000CC54();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v53 = sub_10000CCB4(Property);
            sub_10000CCA0(v94, v53);
            _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Unable to get audioID: %@", v94, 0xCu);
          }
        }

        else
        {
          v77 = 0;
          ioDataSize = 4;
          AudioFileGetProperty(outPropertyData, 0x66666D74u, &ioDataSize, &v77);
          v52 = v77 == 1667327590;
          v51 = v77 == 1634562662;
          if (v77 == 1667327590 || v77 == 1634562662)
          {
            v75 = 0.0;
            v74 = 8;
            v56 = AudioFileGetProperty(outPropertyData, 0x65647572u, &v74, &v75);
            if (v56)
            {
              v49 = sub_10000CC54();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v48 = sub_10000CCB4(v56);
                sub_10000CCA0(v93, v48);
                _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Unable to get duration: %@", v93, 0xCu);
              }
            }

            else
            {
              [(AudioMetadata *)v66 setDuration:v75];
              v47 = transcriptWaveformWidthForDuration(v75);
              v46 = powerLevelsCountForWidth(v47);
              if (v46 && v46 < 0x3E8)
              {
                v64 = [[NSMutableArray alloc] initWithCapacity:v46];

                if (v64)
                {
                  for (i = 0; i < v46; ++i)
                  {
                    v2 = [NSNumber numberWithUnsignedInteger:0];
                    [v64 addObject:v2];
                  }

                  v42 = v75 / v46;
                  memset(v73, 0, sizeof(v73));
                  v72 = 40;
                  v3 = ExtAudioFileGetProperty(outExtAudioFile, 0x66666D74u, &v72, v73);
                  v57 = v3;
                  if (v3)
                  {
                    v41 = sub_10000CC54();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                    {
                      v40 = sub_10000CCB4(v57);
                      sub_10000CCA0(v91, v40);
                      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Unable to get sourceFormat: %@", v91, 0xCu);
                    }
                  }

                  else if (!v52 || LODWORD(v73[1]) == 1869641075)
                  {
                    if (!v51 || LODWORD(v73[1]) == 1935764850)
                    {
                      memset(inPropertyData, 0, sizeof(inPropertyData));
                      if (v73[0] > 0.0 && v73[0] < 72000.0)
                      {
                        inPropertyData[0] = v73[0];
                        *&inPropertyData[1] = 0x96C70636DLL;
                        LODWORD(inPropertyData[4]) = 32;
                        *&inPropertyData[3] = 0x100000004;
                        *&inPropertyData[2] = 0x100000004;
                        v58 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
                        if (v58)
                        {
                          v36 = sub_10000CC54();
                          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                          {
                            v35 = sub_10000CCB4(v58);
                            sub_10000CCA0(v87, v35);
                            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Unable to set clientFormat: %@", v87, 0xCu);
                          }
                        }

                        else
                        {
                          v34 = 0.0;
                          v65 = [[NSMutableArray alloc] initWithCapacity:v46];

                          if (v65)
                          {
                            for (j = 0; j < v46; ++j)
                            {
                              v7 = [NSNumber numberWithFloat:0.0];
                              [v65 addObject:v7];
                            }

                            do
                            {
                              __b.mNumberBuffers = 1;
                              __b.mBuffers[0].mNumberChannels = 1;
                              __b.mBuffers[0].mDataByteSize = 0x8000;
                              __b.mBuffers[0].mData = v63;
                              ioNumberFrames = 0x2000;
                              v59 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &__b);
                              if (!v59 && ioNumberFrames)
                              {
                                v33 = ioNumberFrames / inPropertyData[0];
                                mData = __b.mBuffers[0].mData;
                                v28 = __b.mBuffers[0].mDataByteSize / LODWORD(inPropertyData[3]);
                                for (k = 0; k < v28; ++k)
                                {
                                  if ((mData[k] * 32767.0) >= 0x7FFF)
                                  {
                                    v8 = 0x7FFF;
                                  }

                                  else
                                  {
                                    v8 = mData[k] * 32767.0;
                                  }

                                  if (v8 < -32768)
                                  {
                                    v8 = -32768;
                                  }

                                  v26 = v8;
                                  if (v28 == 1)
                                  {
                                    v25 = v34;
                                  }

                                  else
                                  {
                                    v25 = v34 + k / (v28 - 1) * v33;
                                  }

                                  if (v25 / v42 >= (v46 - 1))
                                  {
                                    v9 = (v46 - 1);
                                  }

                                  else
                                  {
                                    v9 = v25 / v42;
                                  }

                                  v24 = v9;
                                  v10 = [v65 objectAtIndex:v9];
                                  [v10 floatValue];
                                  v12 = pow(v11, 2.0);
                                  v13 = [v64 objectAtIndex:v24];
                                  v14 = [v13 unsignedIntegerValue];
                                  v15 = pow(v26, 2.0) + v12 * v14;
                                  v16 = [v64 objectAtIndex:v24];
                                  *&v15 = sqrt(v15 / ([v16 unsignedIntegerValue] + 1));

                                  LODWORD(v17) = LODWORD(v15);
                                  v18 = [NSNumber numberWithFloat:v17];
                                  [v65 setObject:v18 atIndexedSubscript:v24];

                                  v19 = [v64 objectAtIndex:v24];
                                  v20 = [v19 unsignedIntegerValue] + 1;

                                  v21 = [NSNumber numberWithUnsignedInteger:v20];
                                  [v64 replaceObjectAtIndex:v24 withObject:v21];
                                }

                                v34 = v34 + v33;
                                v23 = 0;
                              }

                              else
                              {
                                oslog = sub_10000CC54();
                                if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                                {
                                  v29 = sub_10000CCB4(v59);
                                  sub_10000CCA0(v86, v29);
                                  _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unable to determine ioNumberFrames: %@", v86, 0xCu);
                                }

                                v23 = 2;
                              }
                            }

                            while (!v23);
                          }

                          else
                          {
                            v32 = sub_10000CC54();
                            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                            {
                              sub_10000CC98(v81);
                              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Unable to allocate powerLevels", v81, 2u);
                            }
                          }
                        }
                      }

                      else
                      {
                        v37 = sub_10000CC54();
                        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                        {
                          v6 = [NSNumber numberWithDouble:v73[0]];
                          sub_10000CCA0(v88, v6);
                          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "mSampleRate is out of bounds: %@", v88, 0xCu);
                        }
                      }
                    }

                    else
                    {
                      v38 = sub_10000CC54();
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        v5 = [NSNumber numberWithUnsignedInt:LODWORD(v73[1])];
                        sub_10000CCA0(v89, v5);
                        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Format is not AMR: %@", v89, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v39 = sub_10000CC54();
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      v4 = [NSNumber numberWithUnsignedInt:LODWORD(v73[1])];
                      sub_10000CCA0(v90, v4);
                      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Format is not OPUS: %@", v90, 0xCu);
                    }
                  }
                }

                else
                {
                  v44 = sub_10000CC54();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    sub_10000CC98(v82);
                    _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Unable to allocate runningAverageCounts", v82, 2u);
                  }
                }
              }

              else
              {
                v45 = sub_10000CC54();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  v1 = [NSNumber numberWithUnsignedInteger:v46];
                  sub_10000CCA0(v92, v1);
                  _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failing because powerLevelsCount is out of bounds: %@", v92, 0xCu);
                }
              }
            }
          }

          else
          {
            v50 = sub_10000CC54();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              sub_10000CC98(v83);
              _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Container is not CAF or AMR.", v83, 2u);
            }
          }
        }
      }

      else
      {
        v60 = sub_10000CC54();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          sub_10000CCA0(v95, v67);
          _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Unable to open file url: %@", v95, 0xCu);
        }
      }
    }

    else
    {
      v61 = sub_10000CC54();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_10000CC98(v84);
        _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "No input file URL", v84, 2u);
      }
    }
  }

  else
  {
    v62 = sub_10000CC54();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_10000CC98(buf);
      _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Couldn't allocate output buffer", buf, 2u);
    }
  }

  if (outExtAudioFile)
  {
    ExtAudioFileDispose(outExtAudioFile);
  }

  if (v63)
  {
    free(v63);
  }

  [(AudioMetadata *)v66 setPowerLevels:v65];
  v68 = v66;

  return v68;
}

id sub_10000CC54()
{
  if (qword_1000FE100 != -1)
  {
    sub_1000C0F48();
  }

  v1 = qword_1000FE108;

  return v1;
}

double sub_10000CCA0(uint64_t a1, uint64_t a2)
{
  *&result = 138412290;
  *a1 = 138412290;
  *(a1 + 4) = a2;
  return result;
}

const __CFString *sub_10000CCB4(int a1)
{
  if (a1 < 0)
  {
    if (a1 == -1502)
    {
      return @"kAudioServicesSystemSoundExceededMaximumDurationError";
    }

    if (a1 != -1501)
    {
      if (a1 == -1500)
      {
        return @"kAudioServicesSystemSoundUnspecifiedError";
      }

      return @"Unknown Error";
    }

    return @"kAudioServicesSystemSoundClientTimedOutError";
  }

  else if (a1 > 561213538)
  {
    if (a1 != 561213539)
    {
      if (a1 == 1886681407)
      {
        return @"kAudioServicesUnsupportedPropertyError";
      }

      return @"Unknown Error";
    }

    return @"kAudioServicesBadSpecifierSizeError";
  }

  else
  {
    if (a1)
    {
      if (a1 == 561211770)
      {
        return @"kAudioServicesBadPropertySizeError";
      }

      return @"Unknown Error";
    }

    return @"kAudioServicesNoError";
  }
}

void sub_10000CD74(id a1)
{
  qword_1000FE108 = os_log_create("com.apple.Messages.blastdoor", "AudioPreviewLevelsGenerator");

  _objc_release_x1();
}

BOOL collaboratonNoticeEventTypeKnown(uint64_t a1)
{
  v2 = [sub_10000CE28() eventClassForType:a1];
  if (!v2)
  {
    v3 = sub_10000CF34();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000C0F5C(a1, v3);
    }
  }

  return v2 != 0;
}

id sub_10000CE28()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000FE110;
  v7 = qword_1000FE110;
  if (!qword_1000FE110)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000D268;
    v3[3] = &unk_1000F0B70;
    v3[4] = &v4;
    sub_10000D268(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000CF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000CF34()
{
  if (qword_1000FE120 != -1)
  {
    sub_1000C1000();
  }

  v1 = qword_1000FE128;

  return v1;
}

id unarchiveCollaborationNoticeEvent(void *a1)
{
  v1 = a1;
  v2 = [sub_10000CE28() allowedClasses];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v11[4] = objc_opt_class();
  v11[5] = objc_opt_class();
  v11[6] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v11 count:7];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v10 = 0;
  v5 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v4 fromData:v1 error:&v10];

  v6 = v10;
  if (v6 || !v5)
  {
    v8 = sub_10000CF34();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C1014(v6, v8);
    }

    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

Class sub_10000D268(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE118)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000D3AC;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0CA0;
    v6 = 0;
    qword_1000FE118 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE118)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_SWHighlightEventAllowList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C1110();
  }

  qword_1000FE110 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000D3AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000FE118 = result;
  return result;
}

void sub_10000D420(id a1)
{
  qword_1000FE128 = os_log_create("com.apple.Messages.blastdoor", "CollaborationNotice");

  _objc_release_x1();
}

id SMSCopySanitizedContentLocation(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"cid:"])
  {
    v2 = [v1 mutableCopy];
    [v2 replaceOccurrencesOfString:@"cid:" withString:&stru_1000F64A0 options:2 range:{0, objc_msgSend(@"cid:", "length")}];
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void sub_10000D688(id a1)
{
  qword_1000FE130 = objc_alloc_init(MBDXMLParser);

  _objc_release_x1();
}

id sub_10000D8F0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v3 reset];
  v5 = [[NSXMLParser alloc] initWithData:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  v8 = objc_alloc_init(NSMutableArray);
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  *(v11 + 24) = 0;

  [*(*(a1 + 32) + 8) setDelegate:?];
  v13 = *(*(a1 + 32) + 8);

  return [v13 parse];
}

void sub_10000D9AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  [*(*(a1 + 32) + 8) setDelegate:0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;
}

objc_class *sub_10000E004(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  if (v6 == v4)
  {
LABEL_5:
    v12 = 0;
  }

  else
  {
    Superclass = v6;
    while (1)
    {
      MethodImplementation = class_getMethodImplementation(Superclass, "name");
      v9 = (MethodImplementation)(*(a1 + 32), "name");
      v10 = [[NSString alloc] initWithFormat:@"%@_%@_Frame", v9, a2];
      v11 = NSClassFromString(v10);
      if (v11)
      {
        break;
      }

      Superclass = class_getSuperclass(Superclass);

      if (Superclass == v4)
      {
        goto LABEL_5;
      }
    }

    v12 = v11;
  }

  return v12;
}

unsigned __int8 *MBDIMCreateDictionaryFromCSSString(void *a1, char a2)
{
  v2 = a1;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_47;
  }

  v28 = objc_alloc_init(NSMutableDictionary);
  v3 = [v2 lengthOfBytesUsingEncoding:4];
  if (!v3)
  {
LABEL_44:
    v5 = 0;
    goto LABEL_46;
  }

  v4 = v3;
  v5 = malloc_type_malloc((v3 + 1), 0x781C8EDFuLL);
  if (!v5)
  {
    goto LABEL_46;
  }

  if (![v2 getCString:v5 maxLength:v4 + 1 encoding:4])
  {
    free(v5);
    goto LABEL_44;
  }

  v6 = 0;
  v26 = v5;
  while (1)
  {
    v7 = *v5;
    if (*v5)
    {
      v8 = 0;
      while (1)
      {
        v9 = v5;
        if (v7 > 0x39)
        {
          if (v7 == 58)
          {

            goto LABEL_38;
          }

          if (v7 < 0x3C)
          {
            break;
          }
        }

        do
        {
          v10 = *++v5;
        }

        while (byte_1000C8DA8[v10] < 0);
        v11 = v5 - 1;
        v12 = v9;
        if (v9 < v5)
        {
          while (1)
          {
            v13 = *v9;
            v14 = v13 > 0x27;
            v15 = (1 << v13) & 0x8500002600;
            if (v14 || v15 == 0)
            {
              break;
            }

            v12 = v9 + 1;
            if (v9++ >= v11)
            {
              goto LABEL_19;
            }
          }

          v12 = v9;
        }

LABEL_19:
        v18 = v5;
        if (v11 > v12)
        {
          v19 = v5;
          v18 = v5;
          while (1)
          {
            v20 = *--v18;
            v21 = (1 << v20) & 0x8500002600;
            if (v20 > 0x27 || v21 == 0)
            {
              break;
            }

            v19 = v18;
            if (v18 <= (v12 + 1))
            {
              goto LABEL_26;
            }
          }

          v18 = v19;
        }

LABEL_26:
        v23 = [[NSString alloc] initWithBytes:v12 length:v18 - v12 encoding:4];

        v7 = *v5;
        v8 = v23;
        if (!*v5)
        {
          goto LABEL_31;
        }
      }

      v23 = v8;
      if (v6)
      {
LABEL_32:
        if (v23)
        {
          if (a2)
          {
            v24 = [v6 lowercaseString];
            [v28 setObject:v23 forKey:v24];
          }

          else
          {
            [v28 setObject:v23 forKey:v6];
          }
        }
      }
    }

    else
    {
      v23 = 0;
LABEL_31:
      if (v6)
      {
        goto LABEL_32;
      }
    }

    if (!*v5)
    {
      break;
    }

    v8 = 0;
    v9 = v5;
LABEL_38:
    v5 = v9 + 1;
    v6 = v8;
  }

  free(v26);
  v5 = v28;
LABEL_46:

LABEL_47:
  return v5;
}

id blastdoor_AVTAvatarRecordRenderingGetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000FE148;
  v7 = qword_1000FE148;
  if (!qword_1000FE148)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100010B08;
    v3[3] = &unk_1000F0B70;
    v3[4] = &v4;
    sub_100010B08(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000FFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id blastdoor_AVTAvatarRecordSerializerGetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000FE158;
  v7 = qword_1000FE158;
  if (!qword_1000FE158)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100010CD0;
    v3[3] = &unk_1000F0B70;
    v3[4] = &v4;
    sub_100010CD0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000100E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000103CC()
{
  v1[0] = 0;
  if (!qword_1000FE180)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100011098;
    v1[4] = &unk_1000F0BA8;
    v1[5] = v1;
    v2 = off_1000F0DB8;
    v3 = 0;
    qword_1000FE180 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000FE180)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void sub_1000105E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000109A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100010B08(uint64_t a1)
{
  sub_100010B60();
  result = objc_getClass("AVTAvatarRecordRendering");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C11BC();
  }

  qword_1000FE148 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100010B60()
{
  v1[0] = 0;
  if (!qword_1000FE150)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100010C5C;
    v1[4] = &unk_1000F0BA8;
    v1[5] = v1;
    v2 = off_1000F0D70;
    v3 = 0;
    qword_1000FE150 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000FE150)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100010C5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000FE150 = result;
  return result;
}

Class sub_100010CD0(uint64_t a1)
{
  sub_100010B60();
  result = objc_getClass("AVTAvatarRecordSerializer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C11E4();
  }

  qword_1000FE158 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100010D28(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE168)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100010E6C;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0D88;
    v6 = 0;
    qword_1000FE168 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE168)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PFServerPosterPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C120C();
  }

  qword_1000FE160 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100010E6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000FE168 = result;
  return result;
}

Class sub_100010EE0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000FE178)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100011024;
    v4[4] = &unk_1000F0BA8;
    v4[5] = v4;
    v5 = off_1000F0DA0;
    v6 = 0;
    qword_1000FE178 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000FE178)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRSPosterArchiver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C1234();
  }

  qword_1000FE170 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100011024(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000FE178 = result;
  return result;
}

uint64_t sub_100011098(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000FE180 = result;
  return result;
}

Class sub_10001110C(uint64_t a1)
{
  sub_1000103CC();
  result = objc_getClass("PRPosterSystemTimeFontConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C125C();
  }

  qword_1000FE188 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100011164(uint64_t a1)
{
  sub_1000103CC();
  result = objc_getClass("PRPosterContentDiscreteColorsStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C1284();
  }

  qword_1000FE190 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000111BC(uint64_t a1)
{
  sub_1000103CC();
  result = objc_getClass("PRPosterContentGradientStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C12AC();
  }

  qword_1000FE198 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100011214(uint64_t a1)
{
  sub_1000103CC();
  result = objc_getClass("PRPosterContentVibrantMaterialStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C12D4();
  }

  qword_1000FE1A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10001126C(uint64_t a1)
{
  sub_1000103CC();
  result = objc_getClass("PRPosterContentVibrantMonochromeStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000C12FC();
  }

  qword_1000FE1A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id extractFirstContactFromData(uint64_t a1)
{
  v7 = 0;
  v1 = [CNContactVCardSerialization summaryOfVCard:a1 error:&v7];
  v2 = v1;
  if (v7)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3 || ![v1 contactCount])
  {
    v5 = 0;
  }

  else
  {
    v4 = [v2 avatarContacts];
    v5 = [v4 firstObject];
  }

  return v5;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = (*(*(sub_1000124CC(&qword_1000FC090, &qword_1000C8EB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v46 = &v35 - v4;
  v45 = sub_1000C55D4();
  v44 = *(v45 - 8);
  v5 = *(v44 + 64);
  __chkstk_darwin();
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000C55E4();
  v7 = *(*(v42 - 8) + 64);
  __chkstk_darwin();
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_1000C1C94() - 8) + 64);
  __chkstk_darwin();
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000C1A34();
  v39 = *(v38 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin();
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000C19F4();
  v36 = *(v35 - 8);
  v13 = *(v36 + 64);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C1A14();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000C19D4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin();
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __bd_register_for_dlsym_callbacks();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  sub_1000C1D64();
  qword_10010AC50 = sub_1000C1CF4();
  qword_10010AC58 = &off_1000F0F50;
  sub_1000C1CC4();
  qword_10010AC60 = &off_1000F1030;
  sub_1000C1CD4();
  sub_1000C3C14();
  sub_100012514();
  sub_1000C1D04();
  sub_1000C3F44();
  sub_100012568();
  sub_1000C1D04();
  sub_1000C4544();
  sub_1000125BC();
  sub_1000C1D04();
  sub_1000C3BC4();
  sub_100012610();
  sub_1000C1D04();
  sub_1000C3464();
  sub_100012664();
  sub_1000C1D04();
  sub_1000C42E4();
  sub_1000126B8();
  sub_1000C1D04();
  sub_1000C4214();
  sub_10001270C();
  sub_1000C1D04();
  sub_1000C4994();
  sub_100012760();
  sub_1000C1D04();
  sub_1000C4BC4();
  sub_1000127B4();
  sub_1000C1D04();
  sub_1000C2384();
  sub_100012808();
  sub_1000C1D04();
  sub_1000C33E4();
  sub_10001285C();
  sub_1000C1D04();
  sub_1000C2184();
  sub_1000128B0();
  sub_1000C1D04();
  sub_1000C2E24();
  sub_100012904();
  sub_1000C1D04();
  sub_1000C4394();
  sub_100012958();
  sub_1000C1D04();
  sub_1000C42A4();
  sub_1000129AC();
  sub_1000C1D04();
  sub_1000C3DE4();
  sub_100012A00();
  sub_1000C1D04();
  sub_1000C22A4();
  sub_100012A54();
  sub_1000C1D04();
  sub_1000C2214();
  sub_100012AA8();
  sub_1000C1D04();
  sub_1000C1E54();
  sub_100012AFC();
  sub_1000C1D04();
  sub_1000C4974();
  sub_100012B50();
  sub_1000C1D04();
  sub_1000C19C4();
  sub_1000C3474();
  sub_100012BA4(&qword_1000FC138, &type metadata accessor for LiteTextMessageUnpacker);
  sub_1000C1D04();
  (*(v22 + 8))(v25, v21);
  sub_1000C1A04();
  sub_1000C4404();
  sub_100012BA4(&qword_1000FC140, &type metadata accessor for SatelliteSMSTextMessageUnpacker);
  sub_1000C1D04();
  (*(v17 + 8))(v20, v16);
  sub_1000C4AA4();
  sub_100012BEC();
  sub_1000C1D04();
  sub_1000C19E4();
  sub_1000C4084();
  sub_100012BA4(&qword_1000FC150, &type metadata accessor for LiteRelayTextMessageUnpacker);
  v26 = v35;
  sub_1000C1D04();
  (*(v36 + 8))(v15, v26);
  sub_1000C1FD4();
  sub_100012C40();
  sub_1000C1D24();
  sub_1000C4344();
  sub_100012C94();
  sub_1000C1D04();
  v27 = v37;
  sub_1000C1A24();
  sub_1000C4634();
  sub_100012BA4(&qword_1000FC168, &type metadata accessor for RelayGroupMutationMessageUnpacker);
  v28 = v38;
  sub_1000C1D04();
  (*(v39 + 8))(v27, v28);
  sub_1000C4524();
  sub_100012CE8();
  sub_1000C1D04();
  sub_1000C4654();
  sub_100012D3C();
  sub_1000C1D04();
  sub_1000C4494();
  sub_100012D90();
  sub_1000C1D14();
  sub_1000C4104();
  sub_100012DE4();
  sub_1000C1D34();
  sub_1000C3E14();
  sub_100012E38();
  sub_1000C1D34();
  sub_1000C25F4();
  sub_100012E8C();
  sub_1000C1D34();
  sub_1000C3D84();
  sub_100012EE0();
  sub_1000C1D54();
  strcpy(&v47, "maps.apple.com");
  HIBYTE(v47) = -18;
  *&v48 = 0x6F6F672E7370616DLL;
  *(&v48 + 1) = 0xEF6D6F632E656C67;
  *&v49 = 27756;
  *(&v49 + 1) = 0xE200000000000000;
  *&v50 = 7105651;
  *(&v50 + 1) = 0xE300000000000000;
  *&v51 = 113;
  *(&v51 + 1) = 0xE100000000000000;
  *&v52 = 0xD000000000000013;
  *(&v52 + 1) = 0x80000001000D5240;
  sub_1000C40A4();
  sub_100012F34();
  sub_1000C1D04();
  v53[2] = v49;
  v53[3] = v50;
  v53[4] = v51;
  v53[5] = v52;
  v53[0] = v47;
  v53[1] = v48;
  sub_100012F88(v53);
  sub_100012FDC();
  sub_1000C1C84();
  *&v47 = &_swiftEmptyArrayStorage;
  sub_100012BA4(&qword_1000FC1B8, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_1000124CC(&qword_1000FC1C0, &qword_1000C8EB8);
  sub_100013028();
  sub_1000C58D4();
  (*(v44 + 104))(v43, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v45);
  v29 = sub_1000C55F4();
  *&v47 = v29;
  sub_1000C2764();
  sub_1000130D4();
  sub_1000C1D54();

  sub_1000C3BB4();
  sub_100013128();
  sub_1000C1D34();
  sub_1000C3104();
  sub_10001317C();
  sub_1000C1D04();
  sub_1000C2164();
  sub_1000131D0();
  sub_1000C1D34();
  sub_1000C23F4();
  sub_100013224();
  sub_1000C1D34();
  sub_1000C2594();
  sub_100013278();
  sub_1000C1D34();
  *&v47 = 0xD000000000000022;
  *(&v47 + 1) = 0x80000001000D5280;
  sub_1000C3374();
  sub_1000132CC();
  sub_1000C1D44();
  sub_1000C3CD4();
  sub_100013320();
  sub_1000C1D04();
  sub_1000C4F84();
  sub_100013374();
  sub_1000C1D14();
  sub_1000C1D94();
  sub_1000133C8();
  sub_1000C1D34();
  sub_1000C3544();
  sub_10001341C();
  sub_1000C1D04();
  sub_1000C3F64();
  sub_100013470();
  sub_1000C1D04();
  sub_1000C45D4();
  sub_1000134C4();
  sub_1000C1D04();
  sub_1000C4424();
  sub_100013518();
  sub_1000C1D04();
  sub_1000C40D4();
  sub_10001356C();
  sub_1000C1D04();
  sub_1000C1DE4();
  sub_1000135C0();
  sub_1000C1D34();
  sub_1000C2E14();
  sub_100013614();
  sub_1000C1D34();
  v30 = enum case for SandboxID.blastdoor(_:);
  v31 = sub_1000C5054();
  v32 = *(v31 - 8);
  v33 = v46;
  (*(v32 + 104))(v46, v30, v31);
  (*(v32 + 56))(v33, 0, 1, v31);
  sub_1000C1CE4();
  sub_100013668(v33);
  return 0;
}

uint64_t sub_1000124CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100012514()
{
  result = qword_1000FC098;
  if (!qword_1000FC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC098);
  }

  return result;
}

unint64_t sub_100012568()
{
  result = qword_1000FC0A0;
  if (!qword_1000FC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0A0);
  }

  return result;
}

unint64_t sub_1000125BC()
{
  result = qword_1000FC0A8;
  if (!qword_1000FC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0A8);
  }

  return result;
}

unint64_t sub_100012610()
{
  result = qword_1000FC0B0;
  if (!qword_1000FC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0B0);
  }

  return result;
}

unint64_t sub_100012664()
{
  result = qword_1000FC0B8;
  if (!qword_1000FC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0B8);
  }

  return result;
}

unint64_t sub_1000126B8()
{
  result = qword_1000FC0C0;
  if (!qword_1000FC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0C0);
  }

  return result;
}

unint64_t sub_10001270C()
{
  result = qword_1000FC0C8;
  if (!qword_1000FC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0C8);
  }

  return result;
}

unint64_t sub_100012760()
{
  result = qword_1000FC0D0;
  if (!qword_1000FC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0D0);
  }

  return result;
}

unint64_t sub_1000127B4()
{
  result = qword_1000FC0D8;
  if (!qword_1000FC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0D8);
  }

  return result;
}

unint64_t sub_100012808()
{
  result = qword_1000FC0E0;
  if (!qword_1000FC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0E0);
  }

  return result;
}

unint64_t sub_10001285C()
{
  result = qword_1000FC0E8;
  if (!qword_1000FC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0E8);
  }

  return result;
}

unint64_t sub_1000128B0()
{
  result = qword_1000FC0F0;
  if (!qword_1000FC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0F0);
  }

  return result;
}

unint64_t sub_100012904()
{
  result = qword_1000FC0F8;
  if (!qword_1000FC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC0F8);
  }

  return result;
}

unint64_t sub_100012958()
{
  result = qword_1000FC100;
  if (!qword_1000FC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC100);
  }

  return result;
}

unint64_t sub_1000129AC()
{
  result = qword_1000FC108;
  if (!qword_1000FC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC108);
  }

  return result;
}

unint64_t sub_100012A00()
{
  result = qword_1000FC110;
  if (!qword_1000FC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC110);
  }

  return result;
}

unint64_t sub_100012A54()
{
  result = qword_1000FC118;
  if (!qword_1000FC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC118);
  }

  return result;
}

unint64_t sub_100012AA8()
{
  result = qword_1000FC120;
  if (!qword_1000FC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC120);
  }

  return result;
}

unint64_t sub_100012AFC()
{
  result = qword_1000FC128;
  if (!qword_1000FC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC128);
  }

  return result;
}

unint64_t sub_100012B50()
{
  result = qword_1000FC130;
  if (!qword_1000FC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC130);
  }

  return result;
}

uint64_t sub_100012BA4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100012BEC()
{
  result = qword_1000FC148;
  if (!qword_1000FC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC148);
  }

  return result;
}

unint64_t sub_100012C40()
{
  result = qword_1000FC158;
  if (!qword_1000FC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC158);
  }

  return result;
}

unint64_t sub_100012C94()
{
  result = qword_1000FC160;
  if (!qword_1000FC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC160);
  }

  return result;
}

unint64_t sub_100012CE8()
{
  result = qword_1000FC170;
  if (!qword_1000FC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC170);
  }

  return result;
}

unint64_t sub_100012D3C()
{
  result = qword_1000FC178;
  if (!qword_1000FC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC178);
  }

  return result;
}

unint64_t sub_100012D90()
{
  result = qword_1000FC180;
  if (!qword_1000FC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC180);
  }

  return result;
}

unint64_t sub_100012DE4()
{
  result = qword_1000FC188;
  if (!qword_1000FC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC188);
  }

  return result;
}

unint64_t sub_100012E38()
{
  result = qword_1000FC190;
  if (!qword_1000FC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC190);
  }

  return result;
}

unint64_t sub_100012E8C()
{
  result = qword_1000FC198;
  if (!qword_1000FC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC198);
  }

  return result;
}

unint64_t sub_100012EE0()
{
  result = qword_1000FC1A0;
  if (!qword_1000FC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1A0);
  }

  return result;
}

unint64_t sub_100012F34()
{
  result = qword_1000FC1A8;
  if (!qword_1000FC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1A8);
  }

  return result;
}

unint64_t sub_100012FDC()
{
  result = qword_1000FC1B0;
  if (!qword_1000FC1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FC1B0);
  }

  return result;
}

unint64_t sub_100013028()
{
  result = qword_1000FC1C8;
  if (!qword_1000FC1C8)
  {
    sub_10001308C(&qword_1000FC1C0, &qword_1000C8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1C8);
  }

  return result;
}

uint64_t sub_10001308C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000130D4()
{
  result = qword_1000FC1D0;
  if (!qword_1000FC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1D0);
  }

  return result;
}

unint64_t sub_100013128()
{
  result = qword_1000FC1D8;
  if (!qword_1000FC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1D8);
  }

  return result;
}

unint64_t sub_10001317C()
{
  result = qword_1000FC1E0;
  if (!qword_1000FC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1E0);
  }

  return result;
}

unint64_t sub_1000131D0()
{
  result = qword_1000FC1E8;
  if (!qword_1000FC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1E8);
  }

  return result;
}

unint64_t sub_100013224()
{
  result = qword_1000FC1F0;
  if (!qword_1000FC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1F0);
  }

  return result;
}

unint64_t sub_100013278()
{
  result = qword_1000FC1F8;
  if (!qword_1000FC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC1F8);
  }

  return result;
}

unint64_t sub_1000132CC()
{
  result = qword_1000FC200;
  if (!qword_1000FC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC200);
  }

  return result;
}

unint64_t sub_100013320()
{
  result = qword_1000FC208;
  if (!qword_1000FC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC208);
  }

  return result;
}

unint64_t sub_100013374()
{
  result = qword_1000FC210;
  if (!qword_1000FC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC210);
  }

  return result;
}

unint64_t sub_1000133C8()
{
  result = qword_1000FC218;
  if (!qword_1000FC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC218);
  }

  return result;
}

unint64_t sub_10001341C()
{
  result = qword_1000FC220;
  if (!qword_1000FC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC220);
  }

  return result;
}

unint64_t sub_100013470()
{
  result = qword_1000FC228;
  if (!qword_1000FC228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC228);
  }

  return result;
}

unint64_t sub_1000134C4()
{
  result = qword_1000FC230;
  if (!qword_1000FC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC230);
  }

  return result;
}

unint64_t sub_100013518()
{
  result = qword_1000FC238;
  if (!qword_1000FC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC238);
  }

  return result;
}

unint64_t sub_10001356C()
{
  result = qword_1000FC240;
  if (!qword_1000FC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC240);
  }

  return result;
}

unint64_t sub_1000135C0()
{
  result = qword_1000FC248;
  if (!qword_1000FC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC248);
  }

  return result;
}

unint64_t sub_100013614()
{
  result = qword_1000FC250;
  if (!qword_1000FC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC250);
  }

  return result;
}

uint64_t sub_100013668(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC090, &qword_1000C8EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000136DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100013720()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000C16E4();
}

uint64_t sub_10001376C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000C16D4();
}

Swift::Int sub_1000137C4()
{
  sub_1000C5CB4();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1000C16D4();
  return sub_1000C5CD4();
}

uint64_t sub_10001382C()
{
  v1 = *v0;
  sub_1000C5224();
  v2 = sub_1000C5344();

  return v2;
}

uint64_t sub_100013868()
{
  v1 = *v0;
  sub_1000C5224();
  sub_1000C52C4();
}

Swift::Int sub_1000138BC()
{
  v1 = *v0;
  sub_1000C5224();
  sub_1000C5CB4();
  sub_1000C52C4();
  v2 = sub_1000C5CD4();

  return v2;
}

uint64_t sub_100013938(uint64_t a1, id *a2)
{
  result = sub_1000C5204();
  *a2 = 0;
  return result;
}

uint64_t sub_1000139B0(uint64_t a1, id *a2)
{
  v3 = sub_1000C5214();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100013A30@<X0>(void *a1@<X8>)
{
  sub_1000C5224();
  v2 = sub_1000C51F4();

  *a1 = v2;
  return result;
}

uint64_t sub_100013A74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000C5224();
  v6 = v5;
  if (v4 == sub_1000C5224() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000C5C04();
  }

  return v9 & 1;
}

void *sub_100013AFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100013B0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1000C16C4();
}

uint64_t sub_100013B78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000C51F4();

  *a2 = v5;
  return result;
}

uint64_t sub_100013BC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000C5224();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100013BEC(uint64_t a1)
{
  v2 = sub_100012BA4(&qword_1000FC280, type metadata accessor for Key);
  v3 = sub_100012BA4(&qword_1000FC288, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

__n128 sub_100013D94(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013DA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013DC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_100013E50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100013E64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013E84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100013ED0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013EF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100013F2C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013F40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013F60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_100014094(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100014100()
{
  result = qword_1000FC310;
  if (!qword_1000FC310)
  {
    sub_1000C2594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC310);
  }

  return result;
}

Swift::Int sub_100014160()
{
  sub_1000C5CB4();
  sub_1000C5CC4(0);
  return sub_1000C5CD4();
}

Swift::Int sub_1000141CC()
{
  sub_1000C5CB4();
  sub_1000C5CC4(0);
  return sub_1000C5CD4();
}

void sub_10001421C()
{
  v0 = sub_1000C14E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C4CF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4CB4();
  sub_1000C4CE4();
  (*(v6 + 8))(v9, v5);
  sub_1000C1494(v10);
  v12 = v11;
  (*(v1 + 8))(v4, v0);
  v13 = audioMetadataForFileURL(v12);

  if (v13)
  {
    v14 = [(AudioMetadata *)v13 powerLevels];
    if (v14)
    {
      v15 = v14;
      sub_1000146D8();
      v16 = sub_1000C53A4();

      v17 = sub_10001446C(v16);

      if (v17)
      {
        [(AudioMetadata *)v13 duration];
        sub_1000C2584();

        return;
      }
    }
  }

  sub_100014684();
  swift_allocError();
  swift_willThrow();
}

void *sub_10001446C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C59A4())
  {
    sub_10004592C(0, i & ~(i >> 63), 0);
    v4 = &_swiftEmptyArrayStorage;
    if (v2)
    {
      v2 = sub_1000C59A4();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = sub_1000C5954();
LABEL_10:
  v6 = v5;
  sub_1000C5464();

  return 0;
}

unint64_t sub_100014684()
{
  result = qword_1000FC318;
  if (!qword_1000FC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC318);
  }

  return result;
}

unint64_t sub_1000146D8()
{
  result = qword_1000FC320;
  if (!qword_1000FC320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FC320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewAudioUnpacker.PreviewAudioUnpackerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PreviewAudioUnpacker.PreviewAudioUnpackerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100014814()
{
  result = qword_1000FC328;
  if (!qword_1000FC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC328);
  }

  return result;
}

uint64_t sub_1000148C0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_1000C4994();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v21 - v8;
  v10 = sub_1000C1464();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1000C1454();
  sub_100014F1C();
  v55 = v13;
  sub_1000C1444();
  v39 = v1;
  if (v1)
  {
    sub_100014F70();
    v14 = sub_1000C5834();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000C94D0;
    *&v41 = v1;
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v16 = sub_1000C4A84();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100014FBC();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_1000C5554();
    sub_1000C1A44();

    swift_getErrorValue();
    swift_getDynamicType();
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    sub_1000C5944(22);

    *&v41 = 0xD000000000000014;
    *(&v41 + 1) = 0x80000001000D5330;
    v56._countAndFlagsBits = sub_1000C5D34();
    sub_1000C52E4(v56);

    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    v40 = v1;
    sub_1000C5994();
    v57._countAndFlagsBits = 32;
    v57._object = 0xE100000000000000;
    sub_1000C52E4(v57);
    swift_getErrorValue();
    v58._countAndFlagsBits = sub_1000C5C64();
    sub_1000C52E4(v58);

    sub_1000C4FC4();
    sub_100015010(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    if (v39)
    {
      return result;
    }

    *&v41 = v25;
    BYTE8(v41) = v22 & 1;
    v42 = v21[0];
    v43 = v21[1];
    v44 = v23;
    v45 = v24;
    *&v46 = v27;
    *(&v46 + 1) = v26;
    *&v47 = v29;
    BYTE8(v47) = v28 & 1;
    *&v48 = v31;
    BYTE8(v48) = v30 & 1;
    *&v49 = v33;
    BYTE8(v49) = v32 & 1;
    *&v50 = v35;
    *(&v50 + 1) = v34;
    LOBYTE(v51) = v36;
    *(&v51 + 1) = v38;
    v52 = v37 & 1;
    v20 = &v41;
  }

  else
  {
    v53[8] = v49;
    v53[9] = v50;
    v53[10] = v51;
    v54 = v52;
    v53[4] = v45;
    v53[5] = v46;
    v53[6] = v47;
    v53[7] = v48;
    v53[0] = v41;
    v53[1] = v42;
    v53[2] = v43;
    v53[3] = v44;
    sub_100046F3C(v53, v9);
    (*(v3 + 16))(v7, v9, v2);
    sub_1000C4BB4();
    (*(v3 + 8))(v9, v2);

    v20 = v53;
  }

  return sub_100015058(v20);
}

unint64_t sub_100014F1C()
{
  result = qword_1000FC338;
  if (!qword_1000FC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC338);
  }

  return result;
}

unint64_t sub_100014F70()
{
  result = qword_1000FC340;
  if (!qword_1000FC340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FC340);
  }

  return result;
}

unint64_t sub_100014FBC()
{
  result = qword_1000FC358;
  if (!qword_1000FC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC358);
  }

  return result;
}

uint64_t sub_100015010(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GroupContextDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FC368, &unk_1000C9570);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100015350();
  sub_1000C5D04();
  v11 = v3[5];
  v12 = *(v3 + 48);
  v25 = 0;
  sub_1000C5B34();
  if (!v2)
  {
    v13 = v3[7];
    v14 = *(v3 + 64);
    v24 = 1;
    sub_1000C5B34();
    v15 = v3[3];
    v16 = v3[4];
    v23 = 2;
    sub_1000C5AF4();
    v17 = v3[1];
    v18 = v3[2];
    v22 = 3;
    sub_1000C5AF4();
    v21 = *v3;
    v20[15] = 4;
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    sub_100015FB4(&qword_1000FC380);
    sub_1000C5B44();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_10001530C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100015350()
{
  result = qword_1000FC370;
  if (!qword_1000FC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC370);
  }

  return result;
}

__n128 GroupContextDictionary.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100015878(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

MessagesBlastDoorService::GroupContextDictionary::CodingKeys_optional __swiftcall GroupContextDictionary.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v5._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._rawValue = &off_1000F1068;
  v5._object = object;
  v3 = sub_1000C59F4(v2, v5);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t GroupContextDictionary.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 30320;
  v2 = 110;
  v3 = 6580583;
  if (a1 != 3)
  {
    v3 = 112;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 30311;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000154E4()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100015590()
{
  *v0;
  *v0;
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_100015628()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

MessagesBlastDoorService::GroupContextDictionary::CodingKeys_optional sub_1000156D0@<W0>(Swift::String *a1@<X0>, MessagesBlastDoorService::GroupContextDictionary::CodingKeys_optional *a2@<X8>)
{
  result.value = GroupContextDictionary.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_100015700(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 30320;
  v5 = 0xE100000000000000;
  v6 = 110;
  v7 = 0xE300000000000000;
  v8 = 6580583;
  if (v2 != 3)
  {
    v8 = 112;
    v7 = 0xE100000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 30311;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100015768()
{
  v1 = *v0;
  v2 = 30320;
  v3 = 110;
  v4 = 6580583;
  if (v1 != 3)
  {
    v4 = 112;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 30311;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100015800(uint64_t a1)
{
  v2 = sub_100015350();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001583C(uint64_t a1)
{
  v2 = sub_100015350();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100015878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC3A0, &qword_1000C9778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100015350();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = sub_1000C5A44();
  v41 = v12 & 1;
  LOBYTE(v35[0]) = 1;
  v29 = sub_1000C5A44();
  v40 = v13 & 1;
  LOBYTE(v35[0]) = 2;
  v14 = sub_1000C5A04();
  v16 = v15;
  *(&v28 + 1) = v14;
  LOBYTE(v35[0]) = 3;
  v17 = sub_1000C5A04();
  *&v28 = v18;
  v27 = v17;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  v42 = 4;
  sub_100015FB4(&qword_1000FC3A8);
  sub_1000C5A54();
  (*(v6 + 8))(v9, v5);
  v26 = v39;
  v30 = __PAIR128__(v27, v39);
  v19 = *(&v28 + 1);
  v31 = v28;
  *&v32 = v16;
  *(&v32 + 1) = v11;
  v20 = v41;
  LOBYTE(v33) = v41;
  v21 = v29;
  *(&v33 + 1) = v29;
  v22 = v40;
  v34 = v40;
  sub_100016020(&v30, v35);
  sub_100015F68(a1);
  v35[0] = v26;
  v35[1] = v27;
  v35[2] = v28;
  v35[3] = v19;
  v35[4] = v16;
  v35[5] = v11;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  result = sub_100016058(v35);
  v24 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v24;
  *(a2 + 64) = v34;
  v25 = v31;
  *a2 = v30;
  *(a2 + 16) = v25;
  return result;
}

unint64_t sub_100015C00()
{
  result = qword_1000FC388;
  if (!qword_1000FC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC388);
  }

  return result;
}

unint64_t sub_100015C58()
{
  result = qword_1000FC390;
  if (!qword_1000FC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC390);
  }

  return result;
}

unint64_t sub_100015CB0()
{
  result = qword_1000FC398;
  if (!qword_1000FC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC398);
  }

  return result;
}

__n128 sub_100015D04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100015D28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100015D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupContextDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupContextDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100015F68(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100015FB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10001308C(&qword_1000FC378, &qword_1000CA860);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1000C49B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - v10;
  v12 = sub_1000C14E4();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v20 = &v32 - v19;
  v44[0] = *a1;
  if (!*(&v44[0] + 1) || (v43 = *(a1 + 16), *(&v43 + 1) >> 60 == 15) || (v42 = *(a1 + 32), !*(&v42 + 1)) || (v41 = *(a1 + 48), *(&v41 + 1) >> 60 == 15) || (*(a1 + 68) & 1) != 0)
  {
    sub_1000C5514();
    sub_100014F70();
    v21 = sub_1000C5714();
    sub_1000C1A54();

    sub_100018E24(a1);
    return (*(v4 + 56))(v39, 1, 1, v3);
  }

  else
  {
    v33 = v43;
    v32 = v41;
    v23 = *(a1 + 64);
    v34 = *&v44[0];
    v35 = v23;
    v37 = v17;
    v38 = v18;
    v36 = v42;
    sub_100018F28(v44, v40, &qword_1000FC3F0, &unk_1000C97B0);
    sub_100018F28(&v43, v40, &qword_1000FC3F8, &qword_1000CE300);
    sub_100018F28(&v42, v40, &qword_1000FC3F0, &unk_1000C97B0);
    sub_100018F28(&v41, v40, &qword_1000FC3F8, &qword_1000CE300);
    sub_1000C14C4();
    sub_100018F90(&v42, &qword_1000FC3F0, &unk_1000C97B0);
    if ((*(v38 + 48))(v11, 1, v37) == 1)
    {
      sub_100018F90(v44, &qword_1000FC3F0, &unk_1000C97B0);
      sub_100018F90(v11, &qword_1000FC3E8, &unk_1000C9E10);
      v24 = sub_1000C5974();
      swift_allocError();
      v26 = v25;
      sub_1000124CC(&qword_1000FC400, &unk_1000C97C0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000C94D0;
      *(v27 + 56) = &type metadata for BalloonPluginPayloadAttachment.CodingKeys;
      *(v27 + 64) = sub_100018E78();
      *(v27 + 32) = 2;
      sub_1000C5964();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.dataCorrupted(_:), v24);
      swift_willThrow();
      sub_100018E24(a1);
      sub_100018F90(&v41, &qword_1000FC3F8, &qword_1000CE300);
      return sub_100018F90(&v43, &qword_1000FC3F8, &qword_1000CE300);
    }

    else
    {
      v28 = v11;
      v29 = v37;
      (*(v38 + 32))(v20, v28, v37);
      result = (*(v38 + 16))(v16, v20, v29);
      if ((v35 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v30 = v45;
        sub_1000C49A4();
        (*(v38 + 8))(v20, v37);
        if (v30)
        {
          return sub_100018E24(a1);
        }

        else
        {
          sub_100018E24(a1);
          v31 = v39;
          (*(v4 + 32))(v39, v7, v3);
          return (*(v4 + 56))(v31, 0, 1, v3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100016638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 + 16);
  v139 = *(a3 + 8);
  v141 = v9;
  v140 = *(a3 + 24);
  v10 = *(a3 + 48);
  v142 = *(a3 + 40);
  v144 = v10;
  v143 = *(a3 + 56);
  v11 = sub_1000124CC(&qword_1000FC3C8, &qword_1000C9798);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v116 - v13;
  v134 = sub_1000C49B4();
  v133 = *(v134 - 8);
  v15 = *(v133 + 64);
  __chkstk_darwin(v134);
  v132 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1000C27A4();
  v123 = *(v124 - 8);
  v17 = *(v123 + 64);
  v18 = __chkstk_darwin(v124);
  v119 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v116 - v20;
  v21 = sub_1000C3EA4();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v127 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v125 = &v116 - v25;
  v128 = sub_1000C4B04();
  v126 = *(v128 - 8);
  v26 = *(v126 + 64);
  __chkstk_darwin(v128);
  v137 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1000C4454();
  v121 = *(v122 - 8);
  v28 = *(v121 + 64);
  __chkstk_darwin(v122);
  v130 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000124CC(&qword_1000FC3C0, &qword_1000C9790);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v136 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v135 = &v116 - v34;
  v158 = sub_1000C4494();
  v147 = *(v158 - 8);
  v35 = *(v147 + 64);
  v36 = __chkstk_darwin(v158);
  v38 = &v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36);
  v120 = &v116 - v40;
  v41 = __chkstk_darwin(v39);
  v131 = &v116 - v42;
  __chkstk_darwin(v41);
  v129 = &v116 - v43;
  v138 = a1;
  v149[0] = a1;
  v149[1] = a2;
  *&v148 = 58;
  *(&v148 + 1) = 0xE100000000000000;
  sub_100018D24();
  v44 = sub_1000C58B4();
  if (!v44[2])
  {

    sub_100018D78(a3);

    v65 = 1;
    v66 = v158;
    v67 = v147;
    v68 = a4;
    return (*(v67 + 56))(v68, v65, 1, v66);
  }

  v146 = a2;
  v117 = a4;
  v145 = v4;
  v45 = v44[4];
  v46 = v44[5];

  v47 = *a3;
  v48 = *(a3 + 8);
  v49 = *(a3 + 68);
  if (v49 >> 6)
  {
    if (v49 >> 6 == 1)
    {
      v144 = *a3;

      sub_1000C5514();
      sub_100014F70();
      v50 = sub_1000C5714();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1000C94D0;
      LOBYTE(v149[0]) = 0;
      v52 = sub_1000C4A84();
      v54 = v53;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_100014FBC();
      *(v51 + 32) = v52;
      *(v51 + 40) = v54;
      sub_1000C1A54();

      v55 = sub_1000C1554();
      v57 = v56;
      sub_1000C5514();
      v58 = sub_1000C57D4();
      sub_1000C1A54();

      v59 = sub_1000C1554();
      v61 = v60;
      v62 = v145;
      v63 = sub_100020EC8();
      if (v62)
      {
        sub_100018CD0(v55, v57);
        sub_100018D78(a3);

        return sub_100018CD0(v59, v61);
      }

      sub_100020064(v63);

      sub_1000C5514();
      v93 = sub_1000C57D4();
      sub_1000C1A54();

      sub_1000C3E54();
      v97 = v126;
      v98 = v118;
      (*(v126 + 16))(v118, v137, v128);
      (*(v123 + 104))(v98, enum case for BalloonPlugin.Payload.customAcknowledgement(_:), v124);
      sub_1000C4474();
      sub_100018CD0(v59, v61);
      sub_100018CD0(v55, v57);
      sub_100018D78(a3);
      (*(v97 + 8))(v137, v128);
      v67 = v147;
      v111 = *(v147 + 32);
      v112 = v129;
      v113 = v158;
      v111(v129, v120);
      v114 = v117;
      goto LABEL_34;
    }

    v87 = *(a3 + 64) | (*(a3 + 68) << 32);
    v152[0] = *a3;
    v152[1] = v48;
    v88 = *(a3 + 32);
    v153 = *(a3 + 16);
    v154 = v88;
    v155 = *(a3 + 48);
    v156 = v87;
    v157 = BYTE4(v87) & 0x3F;

    sub_100018C54(v141, v140);

    sub_100018C54(v144, v143);
    v89 = v145;
    sub_10001608C(v152, v14);
    if (v89)
    {
      return sub_100018D78(a3);
    }

    v90 = v133;
    v91 = v134;
    if ((*(v133 + 48))(v14, 1, v134) == 1)
    {
      sub_100018D78(a3);
      sub_100018F90(v14, &qword_1000FC3C8, &qword_1000C9798);
      v65 = 1;
LABEL_20:
      v68 = v117;
      v66 = v158;
      v67 = v147;
      return (*(v67 + 56))(v68, v65, 1, v66);
    }

    (*(v90 + 32))(v132, v14, v91);
    sub_1000C5514();
    sub_100014F70();
    v92 = sub_1000C5714();
    sub_1000C1A54();

    sub_1000C3E54();
    v113 = v158;
    v94 = v119;
    v95 = v132;
    (*(v90 + 16))(v119, v132, v91);
    (*(v123 + 104))(v94, enum case for BalloonPlugin.Payload.combinedPluginAttachmentInfo(_:), v124);
    sub_1000C4474();
    v96 = v95;
    v110 = v117;
    sub_100018D78(a3);
    (*(v90 + 8))(v96, v91);
    v67 = v147;
    v111 = *(v147 + 32);
    v112 = v129;
    (v111)(v129, v38, v113);
LABEL_33:
    v114 = v110;
LABEL_34:
    (v111)(v114, v112, v113);
    v68 = v114;
    v66 = v113;
    v65 = 0;
    return (*(v67 + 56))(v68, v65, 1, v66);
  }

  if (qword_1000FC068 != -1)
  {
    v115 = *a3;
    swift_once();
    v47 = v115;
  }

  v69 = qword_10010AD68;
  if (!*(qword_10010AD68 + 16))
  {

    goto LABEL_19;
  }

  v144 = v47;
  v70 = sub_100099FF8(v45, v46);
  v72 = v71;

  if ((v72 & 1) == 0)
  {
LABEL_19:

    sub_100018D78(a3);
    v65 = 1;
    goto LABEL_20;
  }

  sub_100018DA8(*(v69 + 56) + 40 * v70, &v148);
  sub_100018E0C(&v148, v149);
  sub_1000C5514();
  sub_100014F70();
  v73 = sub_1000C5714();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1000C94D0;
  sub_100018DA8(v149, &v148);
  sub_1000124CC(&qword_1000FC3D8, &unk_1000CE800);
  v75 = sub_1000C4A84();
  v77 = v76;
  sub_100018F90(&v148, &qword_1000FC3E0, &unk_1000C97A0);
  *(v74 + 56) = &type metadata for String;
  *(v74 + 64) = sub_100014FBC();
  *(v74 + 32) = v75;
  *(v74 + 40) = v77;
  sub_1000C1A54();

  v78 = sub_1000C1554();
  v80 = v79;

  v81 = v130;
  v82 = v145;
  sub_1000C4444();
  v144 = v80;
  v143 = v78;
  if (v82)
  {

    v145 = 0;
    v83 = 1;
    v84 = v117;
    v85 = v136;
    v86 = v135;
  }

  else
  {
    v86 = v135;
    sub_10006A690(v78, v80, v81);
    v85 = v136;
    v145 = 0;
    (*(v121 + 8))(v81, v122);
    v83 = 0;
    v84 = v117;
  }

  v67 = v147;
  v99 = v158;
  (*(v147 + 56))(v86, v83, 1, v158);
  sub_100018F28(v86, v85, &qword_1000FC3C0, &qword_1000C9790);
  v100 = *(v67 + 48);
  v113 = v99;
  if (v100(v85, 1, v99) != 1)
  {
    sub_100018CD0(v143, v144);

    sub_100018D78(a3);
    sub_100018F90(v86, &qword_1000FC3C0, &qword_1000C9790);
    v107 = v131;
    (*(v67 + 32))(v131, v85, v99);
    v112 = v129;
    v110 = v84;
LABEL_32:
    v111 = *(v67 + 32);
    (v111)(v112, v107, v113);
    sub_100015F68(v149);
    goto LABEL_33;
  }

  v101 = v150;
  v102 = v151;
  sub_10001530C(v149, v150);
  v103 = v143;
  v104 = v144;
  v105 = v145;
  (*(v102 + 8))(v143, v144, &_swiftEmptyArrayStorage, v138, v146, v101, v102);
  if (!v105)
  {
    sub_100018CD0(v103, v104);

    sub_100018D78(a3);
    sub_100018F90(v135, &qword_1000FC3C0, &qword_1000C9790);
    v108 = v136;
    v113 = v158;
    v109 = (v100)(v136, 1);
    v110 = v117;
    if (v109 != 1)
    {
      sub_100018F90(v108, &qword_1000FC3C0, &qword_1000C9790);
    }

    v67 = v147;
    v112 = v129;
    v107 = v131;
    goto LABEL_32;
  }

  sub_100018CD0(v103, v104);

  sub_100018D78(a3);
  sub_100018F90(v135, &qword_1000FC3C0, &qword_1000C9790);
  v106 = v136;
  if (v100(v136, 1, v158) != 1)
  {
    sub_100018F90(v106, &qword_1000FC3C0, &qword_1000C9790);
  }

  return sub_100015F68(v149);
}

uint64_t sub_100017870()
{
  v1 = type metadata accessor for MessageDictionary();
  v2 = v0 + *(v1 + 224);
  if (*(v2 + 8))
  {
    return 0;
  }

  v3 = v0 + *(v1 + 228);
  if (*(v3 + 8))
  {
    return 0;
  }

  v4 = *v2;
  v5 = *v3;
  v6 = v4 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v4;
  if (v6 == sub_1000C1324())
  {
    return 0;
  }

  result = v6;
  if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (__OFADD__(v6, v8))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a4;
  v109 = a2;
  v10 = sub_1000124CC(&qword_1000FC410, &unk_1000CAEC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v97 - v12;
  v14 = sub_1000C3EA4();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v108 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v106 = &v97 - v18;
  v19 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v107 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v105 = &v97 - v23;
  v24 = sub_1000C27A4();
  v111 = *(v24 - 8);
  v25 = v111[8];
  v26 = __chkstk_darwin(v24);
  v114 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v112 = &v97 - v28;
  v29 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v113 = (&v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v116 = &v97 - v33;
  v34 = sub_1000124CC(&qword_1000FC3C0, &qword_1000C9790);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v97 - v36;
  v38 = sub_1000C4494();
  v118 = *(v38 - 8);
  v119 = v38;
  v39 = *(v118 + 64);
  __chkstk_darwin(v38);
  v115 = &v97 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for MessageDictionary();
  v46 = (v5 + v41[26]);
  v47 = v46[1];
  v138 = v47;
  if (!v47)
  {
    v58 = sub_1000C27D4();
    v59 = *(*(v58 - 8) + 56);
    v60 = a5;
    return v59(v60, 1, 1, v58);
  }

  v103 = a5;
  v104 = v24;
  v101 = a3;
  v102 = v5;
  v99 = a1;
  v100 = v41;
  v48 = *v46;
  v49 = (v5 + v41[27]);
  v50 = *v49;
  v51 = v49[1];
  if (v51 >> 60 == 15)
  {
    v52 = v5 + v41[28];
    v53 = *(v52 + 1);
    if (v53 == 1)
    {
      v54 = v104;
      if (v48 == 0xD000000000000025 && v138 == 0x80000001000D5590 || (sub_1000C5C04() & 1) != 0)
      {
        v55 = v113;
        sub_100018F28(v117, v113, &qword_1000FC3B8, &qword_1000C9788);
        v56 = sub_1000C35D4();
        (*(*(v56 - 8) + 56))(v13, 1, 1, v56);

        v57 = v114;
        sub_1000C37B4();
        if (v6)
        {

          return sub_100018F90(v55, &qword_1000FC3B8, &qword_1000C9788);
        }

        else
        {
          v110 = v48;
          (v111[13])(v57, enum case for BalloonPlugin.Payload.linkPresentation(_:), v54);
          sub_100018F28(v101, v107, &qword_1000FC3B0, &qword_1000C9780);
          v72 = v102;
          if (*v102)
          {
            v73 = *v102;
          }

          else
          {
            v73 = &_swiftEmptyArrayStorage;
          }

          v74 = v100;
          v75 = (v102 + v100[54]);
          v76 = v75[1];
          v118 = *v75;
          v119 = v73;

          v77 = sub_100017870();
          v116 = v78;
          v117 = v77;
          v79 = v72 + v74[53];
          v80 = *v79;
          v81 = v79[8];
          sub_1000C3E54();

          v94 = v103;
          sub_1000C2794();
          v96 = sub_1000C27D4();
          return (*(*(v96 - 8) + 56))(v94, 0, 1, v96);
        }
      }

      else
      {
        sub_1000C4FC4();
        sub_100018BFC();
        swift_allocError();
        sub_1000C4FB4();
        return swift_willThrow();
      }
    }

    v110 = v48;
    v121[0] = *v52;
    v62 = v121[0];
    v121[1] = v53;
    v63 = *(v52 + 2);
    v122 = *(v52 + 1);
    v123 = v63;
    *v124 = *(v52 + 3);
    *&v124[13] = *(v52 + 61);
    v113 = v122;
    v114 = v6;
    v107 = v63;
    v108 = *(&v122 + 1);
    v48 = *&v124[8];
    v97 = *v124;
    v98 = *(&v63 + 1);
    v64 = *&v124[16];
    v61 = (*&v124[16] | (v124[20] << 32)) & 0x1FFFFFFFFLL | 0xFFFFFF8000000000;
    sub_100018ECC(v121, &v120);
    v45 = v97;
    v44 = v98;
    v43 = v107;
    v42 = v108;
    v47 = v113;
    v125 = v62;
    v126 = v53;
    v127 = v113;
    v128 = v108;
    v129 = v107;
    v130 = v98;
    v131 = v97;
    v132 = v48;
    v133 = v64;
    v134 = BYTE4(v61);
  }

  else
  {
    v110 = v48;
    v114 = v6;
    v61 = 0;
    v125 = v50;
    v126 = v51;
    v134 = 0;
    v62 = v50;
    v53 = v51;
    v133 = 0;
  }

  v135[0] = v62;
  v135[1] = v53;
  v135[2] = v47;
  v135[3] = v42;
  v135[4] = v43;
  v135[5] = v44;
  v135[6] = v45;
  v135[7] = v48;
  v136 = v61;
  v137 = BYTE4(v61);
  v65 = v138;
  swift_bridgeObjectRetain_n();
  sub_100018C54(v50, v51);
  sub_100018F28(&v125, v121, &qword_1000FC418, &qword_1000C97D0);
  v66 = v110;
  v67 = v114;
  sub_100016638(v110, v65, v135, v37);
  if (v67)
  {
    sub_100018F90(&v125, &qword_1000FC418, &qword_1000C97D0);
  }

  v68 = v118;
  v69 = v119;
  if ((*(v118 + 48))(v37, 1, v119) == 1)
  {
    sub_100018F90(&v125, &qword_1000FC418, &qword_1000C97D0);

    sub_100018F90(v37, &qword_1000FC3C0, &qword_1000C9790);
    v58 = sub_1000C27D4();
    v59 = *(*(v58 - 8) + 56);
    v60 = v103;
    return v59(v60, 1, 1, v58);
  }

  (*(v68 + 32))(v115, v37, v69);
  sub_100018F28(v117, v116, &qword_1000FC3B8, &qword_1000C9788);
  v70 = v102;
  sub_1000C4484();
  LODWORD(v117) = *(v70 + 97);
  v71 = v70;
  v113 = sub_1000A89BC();
  sub_100018F28(v101, v105, &qword_1000FC3B0, &qword_1000C9780);
  v83 = v70;
  v84 = &_swiftEmptyArrayStorage;
  if (*v70)
  {
    v84 = *v70;
  }

  v111 = v84;
  v85 = v100;
  v86 = (v71 + v100[54]);
  v87 = v86[1];
  v108 = *v86;

  v107 = sub_100017870();
  v88 = (v83 + v85[53]);
  v110 = v66;
  v89 = *v88;
  v114 = 0;
  v90 = *(v88 + 8);
  v91 = v115;
  sub_1000C4464();

  v92 = v103;
  v93 = v114;
  sub_1000C2794();
  (*(v118 + 8))(v91, v119);
  if (v93)
  {
    return sub_100018F90(&v125, &qword_1000FC418, &qword_1000C97D0);
  }

  sub_100018F90(&v125, &qword_1000FC418, &qword_1000C97D0);
  v95 = sub_1000C27D4();
  return (*(*(v95 - 8) + 56))(v92, 0, 1, v95);
}

uint64_t sub_1000184B0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v57 = a1;
  v5 = sub_1000C3EA4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v58 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v60 = v49 - v10;
  v11 = sub_1000C27A4();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v59 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v49 - v16;
  v18 = sub_1000124CC(&qword_1000FC3C0, &qword_1000C9790);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v49 - v20;
  v22 = sub_1000C4494();
  v64 = *(v22 - 8);
  v23 = *(v64 + 64);
  __chkstk_darwin(v22);
  v25 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MessageDictionary();
  v27 = (v2 + *(v26 + 104));
  v28 = v27[1];
  if (v28)
  {
    v29 = v26;
    v54 = a2;
    v30 = (v2 + *(v26 + 108));
    v31 = v30[1];
    if (v31 >> 60 == 15)
    {
      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();
      sub_1000C4FB4();
      return swift_willThrow();
    }

    else
    {
      v51 = v22;
      v52 = v17;
      v34 = *v27;
      v61[0] = *v30;
      v35 = v61[0];
      v61[1] = v31;
      v62 = 0;
      v63 = 64;

      sub_100018C54(v35, v31);

      sub_100018C54(v35, v31);
      sub_100016638(v34, v28, v61, v21);
      v53 = v3;
      if (v3)
      {
        sub_100018CBC(v35, v31);
      }

      else
      {
        v49[4] = v34;
        v50 = v35;
        v36 = v64;
        v37 = v51;
        if ((*(v64 + 48))(v21, 1, v51) == 1)
        {
          sub_100018CBC(v50, v31);

          sub_100018F90(v21, &qword_1000FC3C0, &qword_1000C9790);
          v38 = sub_1000C27D4();
          return (*(*(v38 - 8) + 56))(v54, 1, 1, v38);
        }

        else
        {
          (*(v36 + 32))(v25, v21, v37);
          sub_100018F28(v57, v52, &qword_1000FC3B8, &qword_1000C9788);
          sub_1000C4484();
          v39 = sub_1000C3D24();
          (*(*(v39 - 8) + 56))(v60, 1, 1, v39);
          if (*v2)
          {
            v40 = *v2;
          }

          else
          {
            v40 = &_swiftEmptyArrayStorage;
          }

          v57 = v40;
          v41 = (v2 + *(v29 + 216));
          v42 = v41[1];
          v49[3] = *v41;

          v49[2] = sub_100017870();
          v49[1] = v43;
          v44 = v2 + *(v29 + 212);
          v49[0] = *v44;
          v45 = v44[8];
          v46 = v53;
          sub_1000C3E54();
          if (v46)
          {

            sub_100018CBC(v50, v31);

            sub_100018F90(v60, &qword_1000FC3B0, &qword_1000C9780);
            (*(v55 + 8))(v59, v56);
            sub_100018F90(v52, &qword_1000FC3B8, &qword_1000C9788);
            return (*(v64 + 8))(v25, v37);
          }

          else
          {
            v47 = v54;
            sub_1000C2794();
            (*(v64 + 8))(v25, v37);
            sub_100018CBC(v50, v31);
            v48 = sub_1000C27D4();
            return (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
          }
        }
      }
    }
  }

  else
  {
    v33 = sub_1000C27D4();
    return (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
  }
}

unint64_t sub_100018BFC()
{
  result = qword_1000FC360;
  if (!qword_1000FC360)
  {
    sub_1000C4FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC360);
  }

  return result;
}

uint64_t sub_100018C54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018C68(a1, a2);
  }

  return a1;
}

uint64_t sub_100018C68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100018CBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018CD0(a1, a2);
  }

  return a1;
}

uint64_t sub_100018CD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100018D24()
{
  result = qword_1000FC3D0;
  if (!qword_1000FC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC3D0);
  }

  return result;
}

uint64_t sub_100018DA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100018E0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100018E78()
{
  result = qword_1000FC408;
  if (!qword_1000FC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC408);
  }

  return result;
}

uint64_t sub_100018F28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000124CC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100018F90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000124CC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100018FF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10001900C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_100019040(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100019064(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 69))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 68) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 68) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000190B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 0;
      *(result + 68) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100019130(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = a1 + 64;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_10001914C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  result = a1 + 64;
  v4 = (v3 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 38);
  *result = v3;
  *(result + 4) = BYTE4(v4);
  return result;
}

unint64_t sub_100019190(uint64_t a1)
{
  result = sub_100012C94();
  *(a1 + 8) = result;
  return result;
}

void sub_100019200(unint64_t a1@<X8>)
{
  v89 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v90 = v82 - v3;
  v94 = sub_1000C5974();
  v92 = *(v94 - 8);
  v4 = *(v92 + 64);
  v5 = __chkstk_darwin(v94);
  v91 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v93 = v82 - v8;
  __chkstk_darwin(v7);
  v10 = v82 - v9;
  v11 = sub_1000C4324();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C4ED4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v82 - v17;
  v19 = sub_1000C1974();
  v96 = *(v19 - 8);
  v20 = *(v96 + 64);
  __chkstk_darwin(v19);
  v22 = v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000C4FC4();
  v98 = *(v23 - 8);
  v24 = *(v98 + 64);
  __chkstk_darwin(v23);
  v97 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000C1984();
  if (v27 >> 60 == 15)
  {
    sub_100014F70();
    v28 = sub_1000C57F4();
    sub_1000C5554();
    sub_1000C1A44();

    sub_10001A0F8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v86 = v23;
  v87 = v26;
  v88 = v27;
  isa = sub_1000C1544().super.isa;
  v30 = [(objc_class *)isa _imOptionallyDecompressData];

  v99 = sub_1000C1564();
  v32 = v31;

  v33 = v32;
  v34 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v34 == 2)
    {
      v36 = *(v99 + 16);
      v35 = *(v99 + 24);
      v37 = __OFSUB__(v35, v36);
      v38 = v35 - v36;
      if (v37)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v38 > 0)
      {
        goto LABEL_10;
      }
    }

LABEL_15:
    v95 = v32;
    v66 = v96;
    (*(v96 + 104))(v22, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v19);
    sub_1000C1964();
    (*(v66 + 8))(v22, v19);
    v67 = v97;
    sub_1000C4FB4();
    sub_100014F70();
    v68 = sub_1000C57F4();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1000C94D0;
    v70 = v98;
    v96 = *(v98 + 16);
    v71 = v86;
    (v96)(v18, v67, v86);
    (*(v70 + 56))(v18, 0, 1, v71);
    v72 = sub_1000C4A84();
    v74 = v73;
    sub_100018F90(v18, &qword_1000FC438, &unk_1000C9DC0);
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = sub_100014FBC();
    *(v69 + 32) = v72;
    *(v69 + 40) = v74;
    sub_1000C5554();
    sub_1000C1A44();

    sub_10001A14C(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    (v96)(v75, v67, v71);
    swift_willThrow();
    sub_100018CBC(v87, v88);
    sub_100018CD0(v99, v95);
    (*(v70 + 8))(v67, v71);
    return;
  }

  if (!v34)
  {
    if (!BYTE6(v32))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v99), v99))
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (HIDWORD(v99) - v99 <= 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v39 = sub_1000C1464();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = sub_1000C1454();
  sub_10001A194();
  v85 = v42;
  v43 = v95;
  sub_1000C1444();
  if (v43)
  {
    v95 = v33;
    v100 = v43;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v44 = v94;
    if (swift_dynamicCast())
    {

      v45 = v93;
      v46 = v92;
      (*(v92 + 32))(v93, v10, v44);
      v89 = sub_100014F70();
      v47 = v44;
      v48 = sub_1000C57F4();
      v84 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v49 = swift_allocObject();
      v83 = xmmword_1000C94D0;
      *(v49 + 16) = xmmword_1000C94D0;
      v82[0] = *(v46 + 16);
      v82[1] = v46 + 16;
      v50 = v90;
      (v82[0])(v90, v45, v47);
      v51 = v47;
      (*(v46 + 56))(v50, 0, 1, v47);
      v52 = sub_1000C4A84();
      v54 = v53;
      sub_100018F90(v50, &qword_1000FC430, &unk_1000C9B00);
      *(v49 + 56) = &type metadata for String;
      v90 = sub_100014FBC();
      *(v49 + 64) = v90;
      *(v49 + 32) = v52;
      *(v49 + 40) = v54;
      sub_1000C5554();
      sub_1000C1A44();

      v55 = v96;
      (*(v96 + 104))(v22, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v19);
      sub_1000C1964();
      (*(v55 + 8))(v22, v19);
      (v82[0])(v91, v93, v51);
      v56 = v97;
      sub_1000C4FA4();
      v57 = sub_1000C57F4();
      v58 = swift_allocObject();
      *(v58 + 16) = v83;
      v59 = v98;
      v96 = *(v98 + 16);
      v60 = v86;
      (v96)(v18, v56, v86);
      (*(v59 + 56))(v18, 0, 1, v60);
      v61 = sub_1000C4A84();
      v63 = v62;
      sub_100018F90(v18, &qword_1000FC438, &unk_1000C9DC0);
      v64 = v90;
      *(v58 + 56) = &type metadata for String;
      *(v58 + 64) = v64;
      *(v58 + 32) = v61;
      *(v58 + 40) = v63;
      sub_1000C5554();
      sub_1000C1A44();

      sub_10001A14C(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      (v96)(v65, v56, v60);
      swift_willThrow();
      sub_100018CBC(v87, v88);

      sub_100018CD0(v99, v95);
      (*(v59 + 8))(v56, v60);
      (*(v92 + 8))(v93, v94);
    }

    else
    {

      sub_100014F70();
      v77 = sub_1000C57F4();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1000C94D0;
      v100 = v43;
      v79 = sub_1000C4A84();
      v81 = v80;
      *(v78 + 56) = &type metadata for String;
      *(v78 + 64) = sub_100014FBC();
      *(v78 + 32) = v79;
      *(v78 + 40) = v81;
      sub_1000C5554();
      sub_1000C1A44();

      swift_getErrorValue();
      swift_getDynamicType();
      v100 = 0;
      v101 = 0xE000000000000000;
      sub_1000C5944(22);

      v100 = 0xD000000000000014;
      v101 = 0x80000001000D5330;
      v102._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v102);

      sub_10001A14C(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100018CD0(v99, v95);
      sub_100018CBC(v87, v88);
    }
  }

  else
  {
    sub_100014F70();
    v76 = sub_1000C57F4();
    sub_1000C5554();
    sub_1000C1A44();

    sub_1000C1994();
    sub_1000C4314();
    sub_1000C4334();
    sub_100018CBC(v87, v88);
    sub_100018CD0(v99, v33);
  }
}

uint64_t sub_100019F84@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_1000C19B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1464();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_10001A14C(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v1)
  {
    sub_100019200(a1);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

unint64_t sub_10001A0F8()
{
  result = qword_1000FC440;
  if (!qword_1000FC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC440);
  }

  return result;
}

uint64_t sub_10001A14C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001A194()
{
  result = qword_1000FC448;
  if (!qword_1000FC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC448);
  }

  return result;
}

unint64_t sub_10001A208(uint64_t a1)
{
  result = sub_10001285C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001A234()
{
  result = qword_1000FC450;
  if (!qword_1000FC450)
  {
    sub_1000C33E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC450);
  }

  return result;
}

unint64_t sub_10001A2CC(uint64_t a1)
{
  result = sub_100012904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001A2F8()
{
  result = qword_1000FC458;
  if (!qword_1000FC458)
  {
    sub_1000C2E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC458);
  }

  return result;
}

uint64_t sub_10001A380@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C3574();
  v74 = *(v3 - 8);
  v4 = *(v74 + 64);
  v5 = __chkstk_darwin(v3);
  v72 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v73 = v65 - v8;
  __chkstk_darwin(v7);
  v10 = v65 - v9;
  v11 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v65 - v13;
  v15 = sub_1000C4D84();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_1000C1A94();
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  v19 = __chkstk_darwin(v17);
  v71 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v75 = v65 - v22;
  __chkstk_darwin(v21);
  v76 = v65 - v23;
  v80 = sub_1000C20D4();
  v24 = *(v80 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v80);
  v28 = v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v79 = v65 - v30;
  __chkstk_darwin(v29);
  v32 = v65 - v31;
  v33 = type metadata accessor for MessageDictionary();
  v34 = (v1 + *(v33 + 120));
  v35 = v34[1];
  if (v35 >> 60 == 15 || (v36 = (v1 + *(v33 + 104)), !v36[1]))
  {
    v47 = sub_1000C34E4();
    v48 = *(*(v47 - 8) + 56);

    return v48(a1, 1, 1, v47);
  }

  else
  {
    v65[1] = v10;
    v65[2] = v3;
    v70 = a1;
    v37 = *v34;
    v66 = *v36;
    sub_100018C54(v37, v35);

    v67 = v37;
    v68 = v35;
    isa = sub_1000C1544().super.isa;
    v38 = [(objc_class *)isa _imOptionallyDecompressData];
    v39 = sub_1000C1564();
    v41 = v40;

    v42 = v80;
    (*(v24 + 104))(v32, enum case for ImageHeader.jpeg(_:), v80);
    LOBYTE(v38) = sub_1000C1594();
    v43 = v32;
    v44 = *(v24 + 8);
    v44(v43, v42);
    if (v38)
    {
      v81[3] = &type metadata for Data;
      v81[4] = &protocol witness table for Data;
      v81[0] = v39;
      v81[1] = v41;
      v45 = sub_1000C4D54();
      (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
      sub_100018C68(v39, v41);
      sub_1000C4D64();
      v46 = v70;
      sub_1000C34D4();
      sub_100018CBC(v67, v68);
      sub_100018CD0(v39, v41);

      v50 = sub_1000C34E4();
      return (*(*(v50 - 8) + 56))(v46, 0, 1, v50);
    }

    else
    {

      v49 = v79;
      v66 = v39;
      sub_1000C15A4();
      v65[0] = v41;
      v52 = v76;
      sub_1000C4C44();
      v53 = v80;
      (*(v24 + 16))(v28, v49, v80);
      v54 = sub_1000C1A84();
      v55 = sub_1000C5514();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v81[0] = v57;
        *v56 = 136315138;
        v58 = sub_1000C20C4();
        v60 = v59;
        v44(v28, v53);
        v61 = sub_10008AC30(v58, v60, v81);

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v54, v55, "Skipping typing indicator icon since image header was incorrect: %s", v56, 0xCu);
        sub_100015F68(v57);

        sub_100018CBC(v67, v68);

        sub_100018CD0(v66, v65[0]);
        (*(v77 + 8))(v76, v78);
        v62 = v79;
      }

      else
      {
        sub_100018CBC(v67, v68);

        sub_100018CD0(v66, v65[0]);
        v44(v28, v53);
        (*(v77 + 8))(v52, v78);
        v62 = v49;
      }

      v44(v62, v53);
      v63 = v70;
      v64 = sub_1000C34E4();
      return (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
    }
  }
}

uint64_t sub_10001AF14(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC468, &qword_1000CAD70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001AF7C()
{
  sub_1000124CC(&qword_1000FC470, &qword_1000C9C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000C9C70;
  v1 = sub_10001D1A8(0, &qword_1000FC478, NSDictionary_ptr);
  *(v0 + 56) = sub_1000124CC(&qword_1000FC480, &qword_1000C9C88);
  *(v0 + 32) = v1;
  v2 = sub_10001D1A8(0, &qword_1000FC488, NSString_ptr);
  *(v0 + 88) = sub_1000124CC(&qword_1000FC490, &qword_1000C9C90);
  *(v0 + 64) = v2;
  v3 = sub_10001D1A8(0, &qword_1000FC498, NSData_ptr);
  *(v0 + 120) = sub_1000124CC(&qword_1000FC4A0, &qword_1000C9C98);
  *(v0 + 96) = v3;
  v4 = sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
  *(v0 + 152) = sub_1000124CC(&qword_1000FC4A8, &qword_1000C9CA0);
  *(v0 + 128) = v4;
  v5 = sub_10001D1A8(0, &qword_1000FC4B0, NSURL_ptr);
  *(v0 + 184) = sub_1000124CC(&qword_1000FC4B8, &qword_1000C9CA8);
  *(v0 + 160) = v5;
  v6 = sub_10001D1A8(0, &qword_1000FC4C0, NSUUID_ptr);
  *(v0 + 216) = sub_1000124CC(&qword_1000FC4C8, &qword_1000C9CB0);
  *(v0 + 192) = v6;
  v7 = sub_10001D1A8(0, &qword_1000FC4D0, NSValue_ptr);
  *(v0 + 248) = sub_1000124CC(&qword_1000FC4D8, &qword_1000C9CB8);
  *(v0 + 224) = v7;
  v8 = sub_10001D1A8(0, &qword_1000FC4E0, NSMutableDictionary_ptr);
  *(v0 + 280) = sub_1000124CC(&qword_1000FC4E8, &unk_1000C9CC0);
  *(v0 + 256) = v8;
  v9 = sub_10001D1A8(0, &qword_1000FC4F0, NSMutableData_ptr);
  *(v0 + 312) = sub_1000124CC(&qword_1000FC4F8, &qword_1000D1280);
  *(v0 + 288) = v9;
  v10 = sub_10001D1A8(0, &qword_1000FC500, NSMutableString_ptr);
  *(v0 + 344) = sub_1000124CC(&qword_1000FC508, &unk_1000C9CD0);
  *(v0 + 320) = v10;
  sub_10001D1A8(0, &qword_1000FC510, NSSet_ptr);
  result = sub_1000C5614();
  qword_10010AC68 = result;
  return result;
}

uint64_t sub_10001B234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v191 = a2;
  *(&v191 + 1) = a3;
  v185 = a4;
  v6 = sub_1000124CC(&qword_1000FC518, &unk_1000C9D10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v187 = v172 - v8;
  v9 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v188 = v172 - v11;
  v12 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v190 = v172 - v14;
  v15 = sub_1000124CC(&qword_1000FC528, &qword_1000C9D28);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v184 = v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v189 = v172 - v20;
  __chkstk_darwin(v19);
  v192 = v172 - v21;
  v22 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v195 = v172 - v24;
  v25 = sub_1000C4D84();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v193 = v172 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000124CC(&qword_1000FC530, &qword_1000C9D38);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v186 = v172 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v194 = v172 - v33;
  __chkstk_darwin(v32);
  v196 = v172 - v34;
  v35 = sub_1000124CC(&qword_1000FC538, &qword_1000C9D40);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v183 = v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v41 = v172 - v40;
  __chkstk_darwin(v39);
  v43 = v172 - v42;
  v44 = sub_1000C3F14();
  v201 = *(v44 - 8);
  v45 = *(v201 + 64);
  __chkstk_darwin(v44);
  v47 = v172 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v48 = sub_1000C5784();
  sub_1000C1A54();

  v49 = sub_1000C4BD4();
  v50 = a1;
  v52 = sub_100020D00(v49, v51, a1);
  if (v4)
  {
  }

  v54 = v52;
  v181 = v41;
  v182 = v50;

  if (v54)
  {
    v55 = sub_10001D1F0(v54);

    v56 = v47;
    if (v55)
    {

      v62 = v44;
      v57 = sub_1000C4A44();
      v176 = sub_1000204C8(v57, v58, v55);
      v178 = v63;

      v64 = sub_1000C4AE4();
      v174 = sub_1000204C8(v64, v65, v55);
      v175 = v75;

      v76 = sub_1000C4C64();
      v83 = sub_1000204C8(v76, v77, v55);
      v173 = v84;

      v85 = sub_1000C4C54();
      v101 = sub_1000204C8(v85, v86, v55);
      v172[5] = v102;

      v103 = sub_1000C4AD4();
      v172[1] = sub_1000204C8(v103, v104, v55);
      v172[4] = v124;
      v172[2] = v101;
      v172[3] = v83;
      v180 = v62;

      v125 = sub_1000C4B94();
      sub_1000204C8(v125, v126, v55);
      v179 = v43;
      v47 = v56;

      v141 = sub_1000C4AB4();
      sub_100020BB0(v141, v142, v55);
    }

    else
    {
      v179 = v43;
      v180 = v44;
    }
  }

  else
  {
    v179 = v43;
    v180 = v44;
  }

  sub_1000C3F04();
  v59 = sub_1000C4C74();
  v60 = v182;
  sub_100020A44(v59, v61, v182, &v198);
  v177 = v47;

  v66 = *(&v198 + 1);
  v67 = v198;
  v68 = sub_1000C3EE4();
  v69 = *(*(v68 - 8) + 56);
  v70 = v179;
  v69(v179, 1, 1, v68);
  if (v66 >> 60 != 15)
  {
    v179 = v70;
    sub_100018C68(v67, v66);
    sub_1000C5514();
    v78 = v67;
    v79 = sub_1000C5784();
    sub_1000C1A54();

    v80 = sub_10001D450();
    v81 = sub_1000C4BF4();
    sub_1000204C8(v81, v82, v80);

    v105 = v181;
    sub_1000C3ED4();
    v127 = v179;
    sub_100018F90(v179, &qword_1000FC538, &qword_1000C9D40);
    v128 = v78;
    v70 = v127;
    sub_100018CBC(v128, v66);
    v69(v105, 0, 1, v68);
    v129 = v127;
    v67 = v128;
    sub_10001D860(v105, v129, &qword_1000FC538, &qword_1000C9D40);
    v60 = v182;
  }

  v71 = sub_1000C49D4();
  sub_100020A44(v71, v72, v60, &v198);
  v73 = v201;
  v74 = v177;
  v179 = v70;

  v88 = *(&v198 + 1);
  v87 = v198;
  v176 = v67;
  v181 = 0;
  if (*(&v198 + 1) >> 60 == 15)
  {
    v178 = v198;
  }

  else
  {
    v89 = sub_1000C1554();
    v90 = v87;
    v91 = v89;
    v93 = v92;
    sub_100018CBC(v90, v88);
    v178 = v91;
    v88 = v93;
  }

  v94 = v196;
  v95 = sub_1000C3EC4();
  v96 = *(*(v95 - 8) + 56);
  v96(v94, 1, 1, v95);
  if (v88 >> 60 != 15)
  {
    v199 = &type metadata for Data;
    v200 = &protocol witness table for Data;
    v97 = v178;
    *&v198 = v178;
    *(&v198 + 1) = v88;
    v98 = sub_1000C4D54();
    (*(*(v98 - 8) + 56))(v195, 1, 1, v98);
    sub_100018C68(v97, v88);
    sub_1000C4D64();
    v99 = v194;
    v100 = v181;
    sub_1000C3EB4();
    v181 = v100;
    if (v100)
    {
      sub_100018CBC(v97, v88);
      sub_100018CBC(v176, v66);
      sub_100018F90(v94, &qword_1000FC530, &qword_1000C9D38);
      sub_100018F90(v179, &qword_1000FC538, &qword_1000C9D40);
      return (*(v201 + 8))(v177, v180);
    }

    sub_100018F90(v196, &qword_1000FC530, &qword_1000C9D38);
    v96(v99, 0, 1, v95);
    sub_10001D860(v99, v196, &qword_1000FC530, &qword_1000C9D38);
    v73 = v201;
    v74 = v177;
  }

  v106 = v66;
  v107 = sub_1000C49C4();
  v109 = v182;
  v110 = v181;
  if (*(v182 + 16))
  {
    v111 = sub_100099FF8(v107, v108);
    v113 = v112;

    v114 = v109;
    if (v113)
    {
      sub_10001D804(*(v109 + 56) + 32 * v111, &v198);
      if (swift_dynamicCast())
      {
        v115 = v197;

        v116 = HIBYTE(*(&v115 + 1)) & 0xFLL;
        if ((*(&v115 + 1) & 0x2000000000000000) == 0)
        {
          v116 = v115 & 0xFFFFFFFFFFFFLL;
        }

        if (v116)
        {
          sub_1000C4FC4();
          sub_100018BFC();
          swift_allocError();
          sub_1000C4FB4();
          swift_willThrow();
LABEL_27:
          sub_100018CBC(v178, v88);
          sub_100018CBC(v176, v106);
          sub_100018F90(v196, &qword_1000FC530, &qword_1000C9D38);
          sub_100018F90(v179, &qword_1000FC538, &qword_1000C9D40);
          return (*(v73 + 8))(v74, v180);
        }

        v195 = 0;
        goto LABEL_29;
      }
    }
  }

  else
  {

    v114 = v109;
  }

  v117 = sub_1000C49C4();
  v119 = sub_100020BB0(v117, v118, v114);
  if (v110)
  {

    goto LABEL_27;
  }

  v195 = v119;

LABEL_29:
  v120 = v196;
  v121 = sub_1000C4604();
  sub_100020A44(v121, v122, v114, &v198);
  if (!v110)
  {

    v130 = *(&v198 + 1);
    v194 = v198;
    v198 = v191;
    *&v197 = 58;
    *(&v197 + 1) = 0xE100000000000000;
    sub_100018D24();
    v131 = (sub_1000C58B4() + 16);
    if (!*v131)
    {

      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v194, v130);
      sub_100018CBC(v178, v88);
      sub_100018CBC(v176, v106);
LABEL_44:
      v123 = v196;
      goto LABEL_45;
    }

    v132 = &v131[2 * *v131];
    v134 = *v132;
    v133 = v132[1];
    *(&v191 + 1) = v134;
    v193 = v133;

    v135 = sub_1000C3144();
    v136 = v130;
    v137 = *(*(v135 - 8) + 56);
    v137(v192, 1, 1, v135);
    v175 = v136;
    if (v136 >> 60 != 15)
    {
      sub_100018C68(v194, v136);
      if (qword_1000FC060 != -1)
      {
        swift_once();
      }

      v143 = qword_10010AD60;
      if (!*(qword_10010AD60 + 16) || (v144 = sub_100099FF8(*(&v191 + 1), v193), (v145 & 1) == 0))
      {
        v151 = v194;
        v152 = v175;
        sub_100018CBC(v194, v175);

        sub_1000C4FC4();
        sub_100018BFC();
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CBC(v151, v152);
LABEL_43:
        sub_100018CBC(v178, v88);
        sub_100018CBC(v176, v106);
        sub_100018F90(v192, &qword_1000FC528, &qword_1000C9D28);
        goto LABEL_44;
      }

      sub_100018DA8(*(v143 + 56) + 40 * v144, &v197);
      sub_100018E0C(&v197, &v198);
      v181 = 0;
      v146 = v199;
      v147 = v200;
      sub_10001530C(&v198, v199);
      v148 = v181;
      (*(v147 + 1))(v194, v175, *(&v191 + 1), v193, v146, v147);
      if (v148)
      {
        v149 = v194;
        v150 = v175;
        sub_100018CBC(v194, v175);
        sub_100018CBC(v149, v150);
        sub_100018CBC(v178, v88);
        sub_100018CBC(v176, v106);

        sub_100018F90(v192, &qword_1000FC528, &qword_1000C9D28);
        sub_100018F90(v196, &qword_1000FC530, &qword_1000C9D38);
        sub_100018F90(v179, &qword_1000FC538, &qword_1000C9D40);
        (*(v201 + 8))(v177, v180);
        return sub_100015F68(&v198);
      }

      v158 = v192;
      sub_100018F90(v192, &qword_1000FC528, &qword_1000C9D28);
      sub_100018CBC(v194, v175);
      v159 = v189;
      v137(v189, 0, 1, v135);
      sub_10001D860(v159, v158, &qword_1000FC528, &qword_1000C9D28);
      sub_100015F68(&v198);
      v73 = v201;
    }

    v138 = sub_1000C4BE4();
    v139 = v182;
    sub_1000204C8(v138, v140, v182);

    v153 = sub_1000C4C04();
    sub_100020770(v153, v154, v139, v190);

    v155 = sub_1000C4C84();
    v189 = sub_1000204C8(v155, v156, v182);
    *&v191 = v157;

    v160 = sub_1000C44E4();
    sub_10001FE58(v160, v161, v182, v188);
    v181 = 0;

    v162 = v187;
    v163 = v180;
    (*(v73 + 16))(v187, v177, v180);
    v164 = *(v73 + 56);
    v180 = v163;
    v164(v162, 0, 1, v163);
    v165 = sub_1000C49E4();
    v167 = v181;
    v174 = sub_1000204C8(v165, v166, v182);
    v181 = v168;
    if (v167)
    {

      sub_100018CBC(v194, v175);
      sub_100018CBC(v178, v88);
      sub_100018CBC(v176, v106);

      sub_100018F90(v187, &qword_1000FC518, &unk_1000C9D10);
      sub_100018F90(v188, &qword_1000FC3E8, &unk_1000C9E10);
      sub_100018F90(v190, &qword_1000FC520, &qword_1000C9D20);
      sub_100018F90(v192, &qword_1000FC528, &qword_1000C9D28);
      v123 = v196;
      goto LABEL_45;
    }

    sub_100018F28(v196, v186, &qword_1000FC530, &qword_1000C9D38);
    v169 = sub_1000C4BF4();
    v182 = sub_1000204C8(v169, v170, v182);
    v173 = v171;

    sub_100018F28(v179, v183, &qword_1000FC538, &qword_1000C9D40);
    sub_100018F28(v192, v184, &qword_1000FC528, &qword_1000C9D28);
    sub_1000C3EF4();
    goto LABEL_43;
  }

  sub_100018CBC(v178, v88);
  sub_100018CBC(v176, v106);
  v123 = v120;
LABEL_45:
  sub_100018F90(v123, &qword_1000FC530, &qword_1000C9D38);
  sub_100018F90(v179, &qword_1000FC538, &qword_1000C9D40);
  return (*(v73 + 8))(v177, v180);
}

uint64_t sub_10001CD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a2;
  v34 = a5;
  v35 = a4;
  v39 = a3;
  v36 = a1;
  v33 = a6;
  v6 = sub_1000C27A4();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C3EA4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C3F24();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v17 = sub_1000C5784();
  sub_1000C1A54();

  if (*(v39 + 2))
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  else
  {
    v19 = v35;
    v39 = v16;
    v31 = v6;
    v20 = sub_1000C1554();
    v22 = v21;
    v23 = v38;
    v24 = sub_10001D450();
    if (v23)
    {
      v25 = v20;
      v26 = v22;
    }

    else
    {
      v37 = v20;
      v38 = v22;
      sub_10001B234(v24, v19, v34, v39);

      sub_1000C5514();
      v27 = sub_1000C5784();
      sub_1000C1A54();

      sub_1000C3E54();
      v28 = v13;
      v29 = *(v13 + 16);
      v30 = v39;
      v29(v9, v39, v12);
      (*(v32 + 104))(v9, enum case for BalloonPlugin.Payload.messagesAppBalloon(_:), v31);
      sub_1000C4474();
      (*(v28 + 8))(v30, v12);
      v25 = v37;
      v26 = v38;
    }

    return sub_100018CD0(v25, v26);
  }
}

uint64_t sub_10001D1A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10001D1F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000124CC(&qword_1000FC540, &unk_1000CE8C0);
    v2 = sub_1000C59D4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_10001D804(*(a1 + 56) + 32 * v15, v30);
        *&v29 = v17;
        *(&v29 + 1) = v18;
        v27[2] = v29;
        v28[0] = v30[0];
        v28[1] = v30[1];
        v19 = v29;
        sub_10001D8C8(v28, v24);
        sub_10001D8C8(v24, v26);
        sub_10001D8C8(v26, v27);
        sub_10001D8C8(v27, &v25);

        result = sub_100099FF8(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100015F68(v12);
          result = sub_10001D8C8(&v25, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_10001D8C8(&v25, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *sub_10001D450()
{
  if (qword_1000FBFF8 != -1)
  {
    swift_once();
  }

  v1 = 0;
  sub_1000C54A4();
  sub_1000C4FC4();
  sub_100018BFC();
  swift_allocError();
  sub_1000C4FB4();
  swift_willThrow();
  return "esAppBalloon unpacking flow.";
}

uint64_t sub_10001D804(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001D860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000124CC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

_OWORD *sub_10001D8C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001D930@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v50 = sub_1000C4A74();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v50);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000124CC(&qword_1000FC558, &qword_1000C9DD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v44 = v38 - v10;
  v11 = sub_1000C4304();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v38 - v16;
  v18 = *(a1 + 4);
  v48 = a1;

  v20 = sub_10001F530(v19, sub_10001F514, v47);

  v45 = v2;
  if (v2)
  {
    v49 = *a1;
    sub_10001F998(&v49);
  }

  else
  {
    v23 = v43;
    v22 = v44;
    v39 = v15;
    v40 = a1;
    v46 = v20;
    v41 = v17;
    v24 = *(a1 + 1);
    v38[1] = *a1;
    v38[2] = v24;
    v25 = *(a1 + 24);
    v26 = a1;
    v38[3] = v19;
    if (v25)
    {
      v27 = v39;
      v28 = v11;
      (*(v43 + 104))(v39, enum case for RelayReachabilityError.none(_:), v11);

      v29 = v41;
    }

    else
    {
      v30 = *(a1 + 2);

      sub_1000C42F4();
      v28 = v11;
      v31 = (*(v23 + 48))(v22, 1, v11);
      v29 = v41;
      if (v31 == 1)
      {
        sub_100018F90(v22, &qword_1000FC558, &qword_1000C9DD0);
        v27 = v39;
        (*(v23 + 104))(v39, enum case for RelayReachabilityError.unknown(_:), v28);
      }

      else
      {
        v27 = v39;
        (*(v23 + 32))(v39, v22, v28);
      }

      v26 = v40;
    }

    result = (*(v23 + 32))(v29, v27, v28);
    v32 = 0;
    LODWORD(v44) = *(v26 + 40);
    v33 = v46;
    v34 = *(v46 + 16);
    v35 = v50;
    while (1)
    {
      if (v34 == v32)
      {
LABEL_13:
        v37 = *(v40 + 41) & 1;
        sub_1000C43C4();
      }

      if (v32 >= *(v33 + 16))
      {
        break;
      }

      (*(v4 + 16))(v7, v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32++, v35);
      v36 = sub_1000C4A54();
      result = (*(v4 + 8))(v7, v35);
      v33 = v46;
      if ((v36 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001DD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a1;
  v51 = a2;
  v49 = a5;
  v7 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v53 = &v42[-v9];
  v10 = sub_1000C4D84();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v52 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000124CC(&qword_1000FC568, &qword_1000C9DE8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v42[-v15];
  v17 = sub_1000124CC(&qword_1000FC570, &qword_1000C9DF0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v42[-v19];
  v21 = sub_1000124CC(&qword_1000FC578, &qword_1000C9DF8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v42[-v23];
  v26 = *a4;
  v25 = a4[1];
  v27 = a3[1];
  v28 = *(a3 + 1);
  v29 = *(a3 + 2);

  sub_100018C54(v28, v29);
  v30 = v58;
  sub_1000C3C04();
  if (v30)
  {
  }

  v45 = v27;
  v47 = v16;
  v48 = v25;
  v46 = v26;
  v58 = v24;
  v31 = v53;
  sub_100018C54(*(a3 + 3), *(a3 + 4));
  sub_1000C22F4();
  v33 = *(a3 + 6);
  if (v33 >> 60 == 15)
  {
    v34 = 1;
    v35 = v47;
  }

  else
  {
    v44 = v20;
    v36 = *(a3 + 5);
    v56 = &type metadata for Data;
    v57 = &protocol witness table for Data;
    v54 = v36;
    v55 = v33;
    v43 = enum case for Image.Encoding.png(_:);
    v37 = v33;
    v38 = sub_1000C4D54();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v31, v43, v38);
    (*(v39 + 56))(v31, 0, 1, v38);
    sub_100018C68(v36, v37);
    sub_1000C4D64();
    v35 = v47;
    sub_1000C2304();
    v34 = 0;
  }

  v40 = sub_1000C2314();
  (*(*(v40 - 8) + 56))(v35, v34, 1, v40);
  v41 = *a3;

  return sub_1000C4A64();
}

void sub_10001E1D0(uint64_t a1@<X8>)
{
  v127 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v128 = v126 - v3;
  v141 = sub_1000C5974();
  v137 = *(v141 - 8);
  v4 = *(v137 + 8);
  v5 = __chkstk_darwin(v141);
  v132 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v130 = v126 - v8;
  v9 = __chkstk_darwin(v7);
  v140 = (v126 - v10);
  __chkstk_darwin(v9);
  v135 = (v126 - v11);
  v12 = sub_1000C43D4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v133 = (v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v139 = v126 - v17;
  v18 = sub_1000C1A94();
  v146 = *(v18 - 8);
  v147 = v18;
  v19 = *(v146 + 64);
  v20 = __chkstk_darwin(v18);
  v129 = (v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v134 = v126 - v23;
  v24 = __chkstk_darwin(v22);
  v136 = v126 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = v126 - v27;
  __chkstk_darwin(v26);
  v30 = v126 - v29;
  v143 = sub_1000C1974();
  v31 = *(v143 - 1);
  v32 = *(v31 + 64);
  __chkstk_darwin(v143);
  v34 = v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1000C4FC4();
  v144 = *(v148 - 8);
  v35 = *(v144 + 64);
  v36 = __chkstk_darwin(v148);
  v131 = v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v138 = v126 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = v126 - v41;
  __chkstk_darwin(v40);
  v44 = v126 - v43;
  isa = sub_1000C1544().super.isa;
  v46 = [(objc_class *)isa _imOptionallyDecompressData];

  v47 = sub_1000C1564();
  v49 = v48;

  v50 = v49 >> 62;
  v145 = v47;
  if ((v49 >> 62) > 1)
  {
    if (v50 != 2)
    {
      goto LABEL_14;
    }

    v52 = *(v47 + 16);
    v51 = *(v47 + 24);
    v53 = __OFSUB__(v51, v52);
    v54 = v51 - v52;
    if (!v53)
    {
      if (v54 > 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if (v50)
  {
    if (!__OFSUB__(HIDWORD(v47), v47))
    {
      if (HIDWORD(v47) - v47 > 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v142 = v49;
      v74 = v143;
      (*(v31 + 104))(v34, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v143);
      sub_1000C1964();
      (*(v31 + 8))(v34, v74);
      sub_1000C4FB4();
      v75 = v30;
      sub_1000C1A74();
      v76 = v144;
      v77 = *(v144 + 16);
      v141 = v44;
      v78 = v148;
      v143 = v77;
      (v77)(v42, v44, v148);
      v79 = sub_1000C1A84();
      v80 = sub_1000C5554();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v137 = v81;
        v140 = swift_slowAlloc();
        *&v150 = v140;
        *v81 = 136446210;
        v82 = v139;
        (v143)(v139, v42, v78);
        (*(v76 + 56))(v82, 0, 1, v78);
        v83 = sub_1000C4A84();
        v138 = v75;
        v84 = v76;
        v86 = v85;
        sub_100018F90(v82, &qword_1000FC438, &unk_1000C9DC0);
        v87 = *(v84 + 8);
        v87(v42, v148);
        v88 = sub_10008AC30(v83, v86, &v150);

        v89 = v137;
        *(v137 + 1) = v88;
        v78 = v148;
        _os_log_impl(&_mh_execute_header, v79, v80, "Message unpacking explosion: %{public}s", v89, 0xCu);
        sub_100015F68(v140);

        (*(v146 + 8))(v138, v147);
      }

      else
      {

        v87 = *(v76 + 8);
        v87(v42, v78);
        (*(v146 + 8))(v75, v147);
      }

      sub_10001F478(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v90 = v141;
      (v143)(v91, v141, v78);
      swift_willThrow();
      sub_100018CD0(v145, v142);
      v87(v90, v78);
      return;
    }

    goto LABEL_31;
  }

  if (!BYTE6(v49))
  {
    goto LABEL_14;
  }

LABEL_8:
  v55 = sub_1000C1464();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = sub_1000C1454();
  sub_10001F4C0();
  v59 = v142;
  sub_1000C1444();
  if (!v59)
  {
    v92 = v49;
    v152 = v150;
    *v153 = *v151;
    *&v153[10] = *&v151[10];
    sub_1000C1A74();
    v93 = sub_1000C1A84();
    v94 = sub_1000C5554();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Unpacking RelayReachabilityResponseDictionary", v95, 2u);
    }

    (*(v146 + 8))(v28, v147);
    sub_10001D930(&v152, v133);
    sub_1000C4644();

    v96 = v145;
    v97 = v92;
    goto LABEL_24;
  }

  v142 = v49;
  *&v150 = v59;
  swift_errorRetain();
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  v60 = v135;
  v61 = v141;
  if (!swift_dynamicCast())
  {

    v98 = v129;
    sub_1000C1A74();
    swift_errorRetain();
    v99 = sub_1000C1A84();
    v100 = sub_1000C5554();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v150 = v102;
      *v101 = 136446210;
      v149 = v59;
      v103 = sub_1000C4A84();
      v105 = sub_10008AC30(v103, v104, &v150);

      *(v101 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v99, v100, "RelayReachabilityResponseDictionary unpacking unknown error: %{public}s", v101, 0xCu);
      sub_100015F68(v102);
    }

    (*(v146 + 8))(v98, v147);
    swift_getErrorValue();
    swift_getDynamicType();
    *&v150 = 0;
    *(&v150 + 1) = 0xE000000000000000;
    sub_1000C5944(22);

    *&v150 = 0xD000000000000014;
    *(&v150 + 1) = 0x80000001000D5330;
    v154._countAndFlagsBits = sub_1000C5D34();
    sub_1000C52E4(v154);

    sub_10001F478(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    v96 = v145;
    v97 = v142;
LABEL_24:
    sub_100018CD0(v96, v97);
    return;
  }

  v62 = v58;

  v63 = v137;
  v64 = v140;
  (*(v137 + 4))(v140, v60, v61);
  sub_1000C1A74();
  v65 = v130;
  v135 = *(v63 + 2);
  (v135)(v130, v64, v61);
  v66 = sub_1000C1A84();
  v67 = sub_1000C5554();
  v68 = os_log_type_enabled(v66, v67);
  v126[1] = v62;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v149 = v129;
    *v69 = 136446210;
    LODWORD(v127) = v67;
    v70 = v128;
    (v135)(v128, v65, v61);
    (*(v63 + 7))(v70, 0, 1, v61);
    v126[0] = sub_1000C4A84();
    v72 = v71;
    sub_100018F90(v70, &qword_1000FC430, &unk_1000C9B00);
    v133 = *(v63 + 1);
    v133(v65, v141);
    v73 = sub_10008AC30(v126[0], v72, &v149);
    v61 = v141;

    *(v69 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v66, v127, "RelayReachabilityResponseDictionary unpacking error: %{public}s", v69, 0xCu);
    sub_100015F68(v129);
  }

  else
  {

    v133 = *(v63 + 1);
    v133(v65, v61);
  }

  v106 = v136;
  v136 = *(v146 + 8);
  (v136)(v106, v147);
  v107 = v143;
  (*(v31 + 104))(v34, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v143);
  sub_1000C1964();
  (*(v31 + 8))(v34, v107);
  (v135)(v132, v140, v61);
  v108 = v138;
  sub_1000C4FA4();
  v109 = v134;
  sub_1000C1A74();
  v110 = v144;
  v111 = v131;
  v112 = v148;
  v143 = *(v144 + 16);
  (v143)(v131, v108, v148);
  v113 = sub_1000C1A84();
  v114 = sub_1000C5554();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v149 = v135;
    *v115 = 136446210;
    v116 = v139;
    (v143)(v139, v111, v112);
    (*(v110 + 56))(v116, 0, 1, v112);
    v117 = sub_1000C4A84();
    v119 = v118;
    sub_100018F90(v116, &qword_1000FC438, &unk_1000C9DC0);
    v120 = *(v110 + 8);
    v120(v111, v148);
    v121 = sub_10008AC30(v117, v119, &v149);

    *(v115 + 4) = v121;
    v112 = v148;
    _os_log_impl(&_mh_execute_header, v113, v114, "RelayReachabilityResponseDictionary unpacking explosion: %{public}s", v115, 0xCu);
    sub_100015F68(v135);

    v122 = v134;
  }

  else
  {

    v120 = *(v110 + 8);
    v120(v111, v112);
    v122 = v109;
  }

  (v136)(v122, v147);
  v123 = v145;
  sub_10001F478(&qword_1000FC360, &type metadata accessor for Explosion);
  swift_allocError();
  v124 = v138;
  (v143)(v125, v138, v112);
  swift_willThrow();

  sub_100018CD0(v123, v142);
  v120(v124, v112);
  v133(v140, v141);
}

uint64_t sub_10001F478(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001F4C0()
{
  result = qword_1000FC550;
  if (!qword_1000FC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC550);
  }

  return result;
}

uint64_t sub_10001F530(uint64_t a1, void (*a2)(uint64_t, uint64_t, _OWORD *), uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a3;
  v41 = sub_1000C4A74();
  v44 = *(v41 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v41);
  v49 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = &_swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v71 = &_swiftEmptyArrayStorage;
  sub_100045A18(0, v8, 0);
  v9 = v71;
  v10 = -1 << *(a1 + 32);
  v48 = a1 + 64;
  result = sub_1000C58E4();
  if (result < 0 || (v12 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v50 = *(a1 + 36);
    v39 = v8;
    v40 = v44 + 32;
    v38 = a1 + 72;
    v13 = 1;
    v45 = a1;
    while (1)
    {
      v14 = v12 >> 6;
      if ((*(v48 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        break;
      }

      if (v50 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v46 = v13;
      v47 = 1 << v12;
      v15 = *(a1 + 56);
      v16 = (*(a1 + 48) + 16 * v12);
      v17 = *v16;
      v18 = v16[1];
      v19 = (v15 + 56 * v12);
      v21 = v19[1];
      v20 = v19[2];
      v22 = *(v19 + 6);
      v55[0] = *v19;
      v56 = v22;
      v74 = v4;
      v55[1] = v21;
      v55[2] = v20;
      v23 = *v19;
      v24 = v19[1];
      v25 = v19[2];
      v54 = *(v19 + 6);
      v52 = v24;
      v53 = v25;
      *&v51[56] = v23;
      v60 = v54;
      v61[0] = v17;
      v58 = v24;
      v59 = v25;
      v57 = v23;
      v61[1] = v18;
      v62 = v23;
      v63 = v24;
      v64 = v25;
      v65 = v54;
      swift_bridgeObjectRetain_n();
      sub_10001F9EC(v55, v51);
      sub_10001F9EC(&v57, v51);
      sub_100018F90(v61, &qword_1000FC560, &unk_1000C9DD8);
      v67 = v57;
      v68 = v58;
      v69 = v59;
      v70 = v60;
      v66[0] = v17;
      v66[1] = v18;
      v72[0] = v57;
      v72[1] = v58;
      v72[2] = v59;
      v73 = v60;
      v26 = v74;
      v42(v17, v18, v72);
      if (v26)
      {
        sub_100018F90(v66, &qword_1000FC560, &unk_1000C9DD8);

        return v9;
      }

      v74 = 0;
      sub_100018F90(v66, &qword_1000FC560, &unk_1000C9DD8);
      v27 = v9;
      v71 = v9;
      v29 = v9[2];
      v28 = v9[3];
      if (v29 >= v28 >> 1)
      {
        sub_100045A18(v28 > 1, v29 + 1, 1);
        v27 = v71;
      }

      v27[2] = v29 + 1;
      v9 = v27;
      result = (*(v44 + 32))(v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v29, v49, v41);
      a1 = v45;
      v30 = 1 << *(v45 + 32);
      if (v12 >= v30)
      {
        goto LABEL_30;
      }

      v31 = *(v48 + 8 * v14);
      if ((v31 & v47) == 0)
      {
        goto LABEL_31;
      }

      if (v50 != *(v45 + 36))
      {
        goto LABEL_32;
      }

      v32 = v31 & (-2 << (v12 & 0x3F));
      if (v32)
      {
        v12 = __clz(__rbit64(v32)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v4 = v74;
      }

      else
      {
        v33 = v14 << 6;
        v34 = v14 + 1;
        v35 = (v38 + 8 * v14);
        v4 = v74;
        while (v34 < (v30 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_10001FA48(v12, v50, 0);
            v12 = __clz(__rbit64(v36)) + v33;
            goto LABEL_20;
          }
        }

        result = sub_10001FA48(v12, v50, 0);
        v12 = v30;
LABEL_20:
        a1 = v45;
      }

      if (v46 == v39)
      {
        return v9;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v46 + 1;
        if (v12 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10001FA48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10001FA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a2;
  v33 = a5;
  v34 = a4;
  v38 = a3;
  v35 = a1;
  v32 = a6;
  v6 = sub_1000C27A4();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C3EA4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C4B04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v17 = sub_1000C57D4();
  sub_1000C1A54();

  if (*(v38 + 2))
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  else
  {
    v38 = v16;
    v30 = v6;
    v19 = sub_1000C1554();
    v21 = v20;
    v22 = v37;
    v23 = sub_100020EC8();
    if (v22)
    {
      v24 = v19;
      v25 = v21;
    }

    else
    {
      v36 = v19;
      v37 = v21;
      sub_100020064(v23);

      sub_1000C5514();
      v26 = sub_1000C57D4();
      sub_1000C1A54();

      sub_1000C3E54();
      v27 = v13;
      v28 = *(v13 + 16);
      v29 = v38;
      v28(v9, v38, v12);
      (*(v31 + 104))(v9, enum case for BalloonPlugin.Payload.customAcknowledgement(_:), v30);
      sub_1000C4474();
      (*(v27 + 8))(v29, v12);
      v24 = v36;
      v25 = v37;
    }

    return sub_100018CD0(v24, v25);
  }
}

void *sub_10001FE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  result = sub_100020614(a1, a2, a3);
  if (!v4)
  {
    if (result)
    {
      v14 = result;
      v15 = [result absoluteString];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1000C5224();
        v19 = v18;

        if (v17)
        {
          v20 = 0;
        }

        else
        {
          v20 = v19 == 0xE000000000000000;
        }

        if (v20)
        {

          goto LABEL_14;
        }

        v21 = sub_1000C5C04();

        if (v21)
        {

LABEL_14:
          v24 = sub_1000C14E4();
          return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
        }
      }

      sub_1000C14A4();

      v23 = sub_1000C14E4();
      (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
    }

    else
    {
      v22 = sub_1000C14E4();
      (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    }

    return sub_100020E58(v12, a4);
  }

  return result;
}

uint64_t sub_100020064(uint64_t a1)
{
  v3 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v35 - v5;
  v7 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v35 - v9;
  sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v11 = sub_1000C57D4();
  sub_1000C1A54();

  v12 = sub_1000C49C4();
  if (*(a1 + 16))
  {
    v14 = sub_100099FF8(v12, v13);
    v16 = v15;

    if (v16)
    {
      sub_10001D804(*(a1 + 56) + 32 * v14, v36);
      if (swift_dynamicCast())
      {
        v18 = v35[4];
        v17 = v35[5];

        v19 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v19 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v19)
        {
          sub_1000C4FC4();
          sub_100018BFC();
          swift_allocError();
          sub_1000C4FB4();
          return swift_willThrow();
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
  }

  v21 = sub_1000C49C4();
  sub_100020BB0(v21, v22, a1);
  if (v1)
  {
  }

LABEL_11:
  v23 = sub_1000C4BE4();
  v25 = sub_1000204C8(v23, v24, a1);
  if (v1)
  {
  }

  v37 = v25;

  v26 = sub_1000C4C04();
  sub_100020770(v26, v27, a1, v10);

  v28 = sub_1000C4C84();
  v35[2] = sub_1000204C8(v28, v29, a1);
  v35[3] = v30;

  v31 = sub_1000C44E4();
  sub_10001FE58(v31, v32, a1, v6);

  v33 = sub_1000C49E4();
  v35[1] = sub_1000204C8(v33, v34, a1);

  return sub_1000C4AF4();
}

uint64_t sub_1000204C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099FF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10001D804(*(a3 + 56) + 32 * v4, v8);
  sub_10001D8C8(v8, v9);
  sub_10001D804(v9, v8);
  if (swift_dynamicCast())
  {
    sub_100015F68(v9);
    return v7;
  }

  else
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();

    sub_1000C4FB4();
    swift_willThrow();
    return sub_100015F68(v9);
  }
}

uint64_t sub_100020614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099FF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10001D804(*(a3 + 56) + 32 * v4, v7);
  sub_10001D8C8(v7, v8);
  sub_10001D804(v8, v7);
  sub_10001D1A8(0, &qword_1000FC4B0, NSURL_ptr);
  if (swift_dynamicCast())
  {
    sub_100015F68(v8);
    return v9;
  }

  else
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();

    sub_1000C4FB4();
    swift_willThrow();
    return sub_100015F68(v8);
  }
}

uint64_t sub_100020770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v19 - v10;
  if (*(a3 + 16) && (v12 = sub_100099FF8(a1, a2), (v13 & 1) != 0))
  {
    sub_10001D804(*(a3 + 56) + 32 * v12, v19);
    sub_10001D8C8(v19, v20);
    sub_10001D804(v20, v19);
    v14 = sub_1000C1614();
    if (swift_dynamicCast())
    {
      sub_100015F68(v20);
      v15 = *(v14 - 8);
      v16 = *(v15 + 56);
      v16(v11, 0, 1, v14);
      (*(v15 + 32))(a4, v11, v14);
      return (v16)(a4, 0, 1, v14);
    }

    else
    {
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
      sub_100018F90(v11, &qword_1000FC520, &qword_1000C9D20);
      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();

      sub_1000C4FB4();
      swift_willThrow();
      return sub_100015F68(v20);
    }
  }

  else
  {
    v18 = sub_1000C1614();
    return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
  }
}

uint64_t sub_100020A44@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  if (!*(a3 + 16) || (result = sub_100099FF8(result, a2), (v6 & 1) == 0))
  {
    v7 = xmmword_1000C9E00;
    goto LABEL_6;
  }

  sub_10001D804(*(a3 + 56) + 32 * result, v9);
  sub_10001D8C8(v9, v10);
  sub_10001D804(v10, v9);
  if (swift_dynamicCast())
  {
    result = sub_100015F68(v10);
    v7 = v8;
LABEL_6:
    *a4 = v7;
    return result;
  }

  sub_100018CBC(0, 0xF000000000000000);
  sub_1000C4FC4();
  sub_100018BFC();
  swift_allocError();

  sub_1000C4FB4();
  swift_willThrow();
  return sub_100015F68(v10);
}

uint64_t sub_100020BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099FF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10001D804(*(a3 + 56) + 32 * v4, v8);
  sub_10001D8C8(v8, v9);
  sub_10001D804(v9, v8);
  if (swift_dynamicCast())
  {
    sub_100015F68(v9);
    return v7;
  }

  else
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();

    sub_1000C4FB4();
    swift_willThrow();
    return sub_100015F68(v9);
  }
}

uint64_t sub_100020D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099FF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10001D804(*(a3 + 56) + 32 * v4, v7);
  sub_10001D8C8(v7, v8);
  sub_10001D804(v8, v7);
  sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  if (swift_dynamicCast())
  {
    sub_100015F68(v8);
    return v9;
  }

  else
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();

    sub_1000C4FB4();
    swift_willThrow();
    return sub_100015F68(v8);
  }
}

uint64_t sub_100020E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100020EC8()
{
  if (qword_1000FBFF8 != -1)
  {
    swift_once();
  }

  v1 = 0;
  sub_1000C54A4();
  sub_1000C4FC4();
  sub_100018BFC();
  swift_allocError();
  sub_1000C4FB4();
  swift_willThrow();
  return " root dictionary";
}

uint64_t sub_1000212E4@<X0>(const char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v261 = a1;
  v262 = a2;
  v229 = a3;
  v3 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v238 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v237 = &v199 - v8;
  v9 = __chkstk_darwin(v7);
  v234 = &v199 - v10;
  __chkstk_darwin(v9);
  v233 = &v199 - v11;
  v12 = sub_1000124CC(&qword_1000FC590, &qword_1000C9EC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v247 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v245 = &v199 - v16;
  v252 = sub_1000124CC(&qword_1000FC598, &qword_1000C9EC8);
  v231 = *(v252 - 8);
  v17 = *(v231 + 64);
  v18 = __chkstk_darwin(v252);
  v236 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v232 = &v199 - v20;
  v258 = sub_1000124CC(&qword_1000FC5A0, &unk_1000C9ED0);
  v230 = *(v258 - 8);
  v21 = *(v230 + 64);
  v22 = __chkstk_darwin(v258);
  v246 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v259 = &v199 - v25;
  v26 = __chkstk_darwin(v24);
  v243 = &v199 - v27;
  __chkstk_darwin(v26);
  v244 = (&v199 - v28);
  v29 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v235 = &v199 - v31;
  v32 = sub_1000C1E44();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v240 = &v199 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000124CC(&qword_1000FC5B0, &qword_1000C9EE0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v239 = &v199 - v37;
  v38 = sub_1000C1E24();
  v241 = *(v38 - 8);
  v242 = v38;
  v39 = *(v241 + 64);
  __chkstk_darwin(v38);
  v255 = &v199 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000C5034();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v199 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000C5044();
  v256 = *(v45 - 8);
  v46 = *(v256 + 64);
  __chkstk_darwin(v45);
  v48 = &v199 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000124CC(&qword_1000FC5B8, &qword_1000C9EE8);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v53 = &v199 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v55 = &v199 - v54;
  v56 = type metadata accessor for SMSDictionary();
  v57 = *(*(v56 - 1) + 64);
  __chkstk_darwin(v56);
  v59 = &v199 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000C1464();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_1000C1454();
  sub_100022C18(&qword_1000FC5C0, type metadata accessor for SMSDictionary);
  v64 = v271;
  sub_1000C1444();
  v271 = v64;
  if (v64)
  {
  }

  v253 = v48;
  v254 = v44;
  v251 = v45;
  v224 = v53;
  v226 = v63;
  v227 = v55;
  v66 = *&v59[v56[23]];
  if (v66)
  {
    v67 = *&v59[v56[23]];
  }

  else
  {
    v67 = &_swiftEmptyArrayStorage;
  }

  v68 = v67[2];
  v248 = v59;
  v228 = v56;
  v257 = v67;
  v225 = v66;
  if (v68)
  {
    v263[0] = &_swiftEmptyArrayStorage;

    result = sub_100045A5C(0, v68, 0);
    v69 = 0;
    v70 = v263[0];
    v249 = (v256 + 32);
    v250 = v68;
    v71 = 32;
    while (v69 < v67[2])
    {
      v261 = v69;
      v262 = v70;
      v260 = v71;
      v72 = *(v67 + v71 + 48);
      v73 = *(v67 + v71 + 64);
      v74 = *(v67 + v71 + 32);
      v270[1] = *(v67 + v71 + 16);
      v270[2] = v74;
      v75 = *(v67 + v71);
      v270[3] = v72;
      v270[4] = v73;
      v270[0] = v75;
      sub_100022C60(v270, &v264);

      v76 = v271;
      sub_100049308(v254);
      if (v76)
      {
        v271 = v76;

        sub_100022CBC(v270);

        v81 = v248;
        return sub_100022D10(v81);
      }

      v77 = v253;
      sub_1000C5024();
      v271 = 0;
      sub_100022CBC(v270);
      v70 = v262;
      v263[0] = v262;
      v79 = v262[2];
      v78 = v262[3];
      v67 = v257;
      if (v79 >= v78 >> 1)
      {
        sub_100045A5C(v78 > 1, v79 + 1, 1);
        v77 = v253;
        v70 = v263[0];
      }

      v69 = v261 + 1;
      v70[2] = v79 + 1;
      result = (*(v256 + 32))(v70 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v79, v77, v251);
      v71 = v260 + 80;
      v80 = v255;
      if (v250 == v69)
      {
        v82 = v248;
        v56 = v228;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v82 = v59;

  v70 = &_swiftEmptyArrayStorage;
  v80 = v255;
LABEL_16:
  v83 = (v82 + v56[26]);
  v84 = *v83;
  v85 = v83[1];
  v86 = v82 + v56[27];
  v87 = *v86;
  v88 = *(v86 + 8);

  sub_1000C4954();
  v89 = v227;
  v90 = v271;
  sub_1000C1E04();
  if (v90)
  {

    v271 = 0;
    v91 = 1;
  }

  else
  {
    v271 = 0;
    v91 = 0;
  }

  v93 = v241;
  v92 = v242;
  v94 = sub_1000C1E14();
  (*(*(v94 - 8) + 56))(v89, v91, 1, v94);
  v223 = *v248;
  v222 = v248[8];
  v95 = v239;
  sub_100018F28(&v248[v228[5]], v239, &qword_1000FC5B0, &qword_1000C9EE0);
  v96 = *(v93 + 48);
  v97 = v96(v95, 1, v92);
  v262 = v70;
  if (v97 == 1)
  {
    (*(v93 + 104))(v80, enum case for SMSMessage.FilterSubCategoryType.filterSubCategoryNone(_:), v92);
    if (v96(v95, 1, v92) != 1)
    {
      sub_100018F90(v95, &qword_1000FC5B0, &qword_1000C9EE0);
    }
  }

  else
  {
    (*(v93 + 32))(v80, v95, v92);
  }

  v98 = v228;
  v99 = v228[7];
  v100 = v248;
  v101 = &v248[v228[6]];
  v103 = *v101;
  v102 = *(v101 + 1);
  v105 = *&v248[v99];
  v104 = *&v248[v99 + 8];

  v250 = v104;

  v106 = v271;
  sub_100060C2C(v240);
  v271 = v106;
  if (!v106)
  {
    v219 = v105;
    v220 = v103;
    v221 = v102;
    v107 = v98[10];
    v242 = *(v100 + v98[9]);
    sub_100018F28(v100 + v107, v235, &qword_1000FC5A8, &qword_1000CEA40);
    v108 = v98[12];
    v109 = (v100 + v98[11]);
    v110 = v109[1];
    v218 = *v109;
    v216 = *(v100 + v108);
    v215 = *(v100 + v108 + 8);
    v111 = v98[14];
    v112 = (v100 + v98[13]);
    v113 = v112[1];
    v214 = *v112;
    v114 = *(v100 + v111 + 8);
    v212 = *(v100 + v111);
    v115 = v98[16];
    v116 = (v100 + v98[15]);
    v117 = v116[1];
    v210 = *v116;
    v118 = *(v100 + v115 + 8);
    v208 = *(v100 + v115);
    v119 = v98[18];
    v120 = (v100 + v98[17]);
    v121 = *v120;
    v241 = v120[1];
    v122 = *(v100 + v119 + 8);
    v205 = *(v100 + v119);
    v206 = v121;
    v239 = v122;
    v123 = v98[20];
    v124 = v100 + v98[19];
    v204 = *v124;
    v203 = *(v124 + 8);
    v125 = v100 + v123;
    v126 = *(v100 + v123);
    v201 = *(v125 + 8);
    v202 = v126;
    v207 = v118;
    v127 = v225;
    v217 = v110;
    v213 = v113;
    v211 = v114;
    v209 = v117;
    if (!v225)
    {

      v128 = v252;
      v129 = v247;
      v130 = v259;
      goto LABEL_45;
    }

    v254 = *(v225 + 16);

    v128 = v252;
    v129 = v247;
    v130 = v259;
    if (!v254)
    {
      v151 = 0;
      goto LABEL_43;
    }

    v131 = 0;
    v132 = (v127 + 32);
    v253 = "incorrectValueType";
    v256 = v230 + 8;
    v251 = (v231 + 56);
    v249 = (v231 + 48);
    v199 = (v231 + 32);
    v200 = (v231 + 8);
    v133 = v244;
    v134 = v245;
    while (1)
    {
      v264 = *v132;
      v135 = v132[1];
      v136 = v132[2];
      v137 = v132[4];
      v267 = v132[3];
      v268 = v137;
      v265 = v135;
      v266 = v136;
      sub_100022C60(&v264, v263);
      sub_1000124CC(&qword_1000FC5C8, &qword_1000C9EF0);
      sub_1000C1704();
      if (!*(&v265 + 1))
      {
        break;
      }

      v261 = v131;
      sub_1000C5374();
      v260 = v138;
      sub_100022D6C();
      v139 = v243;
      v140 = v258;
      sub_1000C16F4();
      v141 = v271;
      sub_1000C1714();
      v142 = v256;
      if (v141)
      {

        v143 = *v142;
        (*v142)(v139, v140);
        v128 = v252;
        v134 = v245;
        (*v251)(v245, 1, 1, v252);
        v271 = 0;
        v144 = v140;
        goto LABEL_37;
      }

      v271 = 0;
      v143 = *v256;
      (*v256)(v139, v140);

      v134 = v245;
      v128 = v252;
      if ((*v249)(v245, 1, v252) == 1)
      {
        v144 = v258;
LABEL_37:
        v131 = v261;
        v145 = v244;
        v143(v244, v144);
        v133 = v145;
        v129 = v247;
        v100 = v248;
        v130 = v259;
LABEL_30:
        sub_100018F90(v134, &qword_1000FC590, &qword_1000C9EC0);
        goto LABEL_31;
      }

      v146 = v232;
      (*v199)(v232, v134, v128);
      swift_getKeyPath();
      sub_1000C1724();

      sub_1000C52A4();

      v147 = v233;
      sub_1000C15E4();

      v148 = v234;
      sub_100018F28(v147, v234, &qword_1000FC520, &qword_1000C9D20);
      v149 = sub_1000C1614();
      v150 = *(v149 - 8);
      if ((*(v150 + 48))(v148, 1, v149) != 1)
      {
        sub_1000C15F4();
        sub_100018F90(v147, &qword_1000FC520, &qword_1000C9D20);
        v198 = v252;
        (*v200)(v146, v252);
        v143(v244, v258);
        (*(v150 + 8))(v148, v149);
        sub_100022CBC(&v264);

        v129 = v247;
        v100 = v248;
        v128 = v198;
        v130 = v259;
        v67 = v257;
        v151 = v261;
LABEL_43:
        result = v225;
        v152 = *(v225 + 16);
        if (v151 != v152)
        {
          if (v151 < v152)
          {
            v156 = (v225 + 80 * v151);
            v269[0] = v156[2];
            v157 = v156[3];
            v158 = v156[4];
            v159 = v156[6];
            v269[3] = v156[5];
            v269[4] = v159;
            v269[1] = v157;
            v269[2] = v158;
            sub_100022C60(v269, &v264);
            v243 = sub_10004A758();
            v161 = v160;
            result = sub_100022CBC(v269);
            v234 = v161;
            if (v161)
            {

              v129 = v247;
              v153 = v228;
              goto LABEL_49;
            }

            goto LABEL_70;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          return result;
        }

LABEL_45:
        v153 = v228;
        v154 = (v100 + v228[21]);
        v155 = v154[1];
        v243 = *v154;
        v234 = v155;

LABEL_49:
        v162 = (v100 + v153[22]);
        v163 = *v162;
        v232 = v162[1];
        v233 = v163;
        v164 = v153[25];
        LODWORD(v225) = *(v100 + v153[24]);
        LODWORD(v200) = *(v100 + v164);
        v165 = v67[2];

        v256 = v165;
        if (!v165)
        {
LABEL_63:

          LODWORD(v261) = 0;
LABEL_64:
          v185 = (v100 + v228[30]);
          v186 = *v185;
          v187 = v185[1];
          v188 = (v100 + v228[31]);
          v189 = v188[1];
          v259 = *v188;
          v260 = v186;
          v190 = v228[28];
          v191 = (v100 + v228[29]);
          v192 = v100;
          v193 = *v191;
          v194 = v191[1];
          v196 = *(v192 + v190);
          v195 = *(v192 + v190 + 8);
          v197 = v227;
          sub_100018F28(v227, v224, &qword_1000FC5B8, &qword_1000C9EE8);

          sub_1000C1E34();
          sub_100018F90(v197, &qword_1000FC5B8, &qword_1000C9EE8);

          return sub_100022D10(v248);
        }

        v166 = 0;
        v167 = (v230 + 8);
        v253 = (v231 + 56);
        v254 = "incorrectValueType";
        v249 = (v231 + 48);
        v244 = (v231 + 8);
        v245 = (v231 + 32);
        v168 = 32;
        v251 = (v230 + 8);
        while (2)
        {
          if (v166 >= v67[2])
          {
            goto LABEL_68;
          }

          v264 = *(v67 + v168);
          v169 = *(v67 + v168 + 16);
          v170 = *(v67 + v168 + 32);
          v171 = *(v67 + v168 + 64);
          v267 = *(v67 + v168 + 48);
          v268 = v171;
          v265 = v169;
          v266 = v170;
          sub_100022C60(&v264, v263);
          sub_1000124CC(&qword_1000FC5C8, &qword_1000C9EF0);
          sub_1000C1704();
          if (*(&v265 + 1))
          {
            v260 = v168;
            v261 = v166;
            sub_1000C5374();
            sub_100022D6C();
            v172 = v246;
            v173 = v129;
            v174 = v258;
            sub_1000C16F4();
            v175 = v271;
            sub_1000C1714();
            if (v175)
            {

              sub_100022CBC(&v264);
              v167 = v251;
              v176 = *v251;
              (*v251)(v172, v174);
              v128 = v252;
              (*v253)(v173, 1, 1, v252);
              v271 = 0;
              v177 = v174;
              goto LABEL_60;
            }

            v271 = 0;
            v167 = v251;
            v176 = *v251;
            (*v251)(v172, v174);

            v128 = v252;
            if ((*v249)(v173, 1, v252) == 1)
            {
              sub_100022CBC(&v264);
              v177 = v258;
LABEL_60:
              v67 = v257;
              v176(v259, v177);
              v129 = v247;
              v100 = v248;
              v168 = v260;
              v166 = v261;
LABEL_52:
              result = sub_100018F90(v129, &qword_1000FC590, &qword_1000C9EC0);
            }

            else
            {
              v178 = v173;
              v179 = v236;
              (*v245)(v236, v178, v128);
              swift_getKeyPath();
              sub_1000C1724();

              sub_1000C52A4();

              v180 = v237;
              sub_1000C15E4();

              v181 = v238;
              sub_100018F28(v180, v238, &qword_1000FC520, &qword_1000C9D20);
              v182 = sub_1000C1614();
              v183 = *(v182 - 8);
              v184 = (*(v183 + 48))(v181, 1, v182);
              v67 = v257;
              if (v184 != 1)
              {
                sub_1000C15F4();
                sub_100022CBC(&v264);
                sub_100018F90(v180, &qword_1000FC520, &qword_1000C9D20);
                (*v244)(v179, v252);
                v176(v259, v258);
                (*(v183 + 8))(v181, v182);

                LODWORD(v261) = 1;
                v100 = v248;
                goto LABEL_64;
              }

              sub_100022CBC(&v264);
              sub_100018F90(v180, &qword_1000FC520, &qword_1000C9D20);
              v128 = v252;
              (*v244)(v179, v252);
              v167 = v251;
              v176(v259, v258);
              result = sub_100018F90(v181, &qword_1000FC520, &qword_1000C9D20);
              v129 = v247;
              v100 = v248;
              v168 = v260;
              v166 = v261;
            }

            ++v166;
            v168 += 80;
            v130 = v259;
            if (v256 == v166)
            {
              goto LABEL_63;
            }

            continue;
          }

          break;
        }

        sub_100022CBC(&v264);
        (*v167)(v130, v258);
        (*v253)(v129, 1, 1, v128);
        goto LABEL_52;
      }

      sub_100018F90(v147, &qword_1000FC520, &qword_1000C9D20);
      v128 = v252;
      (*v200)(v146, v252);
      v133 = v244;
      v143(v244, v258);
      sub_100018F90(v148, &qword_1000FC520, &qword_1000C9D20);
      v129 = v247;
      v100 = v248;
      v130 = v259;
      v134 = v245;
      v131 = v261;
LABEL_31:
      sub_100022CBC(&v264);
      ++v131;
      v132 += 5;
      if (v254 == v131)
      {
        v151 = v254;
        v67 = v257;
        goto LABEL_43;
      }
    }

    (*v256)(v133, v258);
    (*v251)(v134, 1, 1, v128);
    goto LABEL_30;
  }

  (*(v241 + 8))(v80, v242);
  sub_100018F90(v227, &qword_1000FC5B8, &qword_1000C9EE8);
  v81 = v100;
  return sub_100022D10(v81);
}

uint64_t sub_100022C18(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022D10(uint64_t a1)
{
  v2 = type metadata accessor for SMSDictionary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100022D6C()
{
  result = qword_1000FC5D0;
  if (!qword_1000FC5D0)
  {
    sub_10001308C(&qword_1000FC5A0, &unk_1000C9ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC5D0);
  }

  return result;
}

unint64_t sub_100022DE4()
{
  result = qword_1000FC5D8;
  if (!qword_1000FC5D8)
  {
    sub_1000C3104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC5D8);
  }

  return result;
}

void sub_100022E3C(uint64_t a1@<X8>)
{
  v3 = sub_1000C30E4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_1000C1544().super.isa;
  v8 = extractFirstContactFromData(isa);

  if (v8)
  {
    v9 = [v8 familyName];
    v10 = sub_1000C5224();

    v11 = [v8 givenName];
    v12 = sub_1000C5224();
    v36 = v13;

    v14 = objc_opt_self();
    v15 = [v14 stringFromContact:v8 style:0];
    v34 = v6;
    if (v15)
    {
      v16 = v15;
      v17 = sub_1000C5224();
      v30 = v18;
      v31 = v17;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v35 = v1;
    v19 = [v14 nameOrderForContact:{v8, a1}];
    v32 = v12;
    v33 = v10;
    if (v19 == 1)
    {
      v20 = v12;
    }

    else
    {
      v20 = v10;
    }

    v29 = v20;

    if ([v8 contactType] == 1)
    {
      v21 = [v8 organizationName];
      v22 = sub_1000C5224();
      v27 = v23;
      v28 = v22;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v24 = [v8 organizationName];
    sub_1000C5224();

    [v14 nameOrderForContact:v8];

    v25 = v35;
    sub_1000C30D4();
    if (!v25)
    {
      sub_1000C30F4();
    }
  }

  else
  {
    sub_100023120();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_100023120()
{
  result = qword_1000FC5E0;
  if (!qword_1000FC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC5E0);
  }

  return result;
}

uint64_t sub_1000231DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v164 = a2;
  v161 = a1;
  v136 = a3;
  v142 = sub_1000C4D24();
  v141 = *(v142 - 8);
  v3 = *(v141 + 64);
  v4 = __chkstk_darwin(v142);
  v146 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v143 = &v132 - v7;
  v8 = __chkstk_darwin(v6);
  v140 = &v132 - v9;
  __chkstk_darwin(v8);
  v147 = &v132 - v10;
  v11 = sub_1000124CC(&qword_1000FC5F0, &unk_1000CA030);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v135 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v137 = &v132 - v16;
  v17 = __chkstk_darwin(v15);
  v134 = &v132 - v18;
  v19 = __chkstk_darwin(v17);
  v133 = &v132 - v20;
  v21 = __chkstk_darwin(v19);
  v145 = &v132 - v22;
  __chkstk_darwin(v21);
  v149 = &v132 - v23;
  v150 = sub_1000C2114();
  v148 = *(v150 - 8);
  v24 = *(v148 + 64);
  v25 = __chkstk_darwin(v150);
  v144 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v151 = &v132 - v27;
  v28 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v153 = &v132 - v30;
  v31 = sub_1000124CC(&qword_1000FC5F8, &unk_1000CA040);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v139 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v138 = &v132 - v36;
  v37 = __chkstk_darwin(v35);
  v152 = &v132 - v38;
  __chkstk_darwin(v37);
  v154 = &v132 - v39;
  v162 = sub_1000C4CC4();
  v172 = *(v162 - 8);
  v40 = *(v172 + 64);
  v41 = __chkstk_darwin(v162);
  v163 = &v132 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v132 - v43;
  v45 = sub_1000C4CF4();
  v159 = v45;
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v132 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1000C5554();
  v160 = sub_100014F70();
  v50 = sub_1000C56B4();
  v157 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v51 = swift_allocObject();
  v156 = xmmword_1000C94D0;
  *(v51 + 16) = xmmword_1000C94D0;
  sub_1000C4CB4();
  v52 = sub_1000C4CD4();
  v54 = v53;
  v158 = *(v46 + 8);
  v158(v49, v45);
  v168 = v52;
  v169 = v54;
  v55 = sub_1000C4A84();
  v57 = v56;

  *(v51 + 56) = &type metadata for String;
  v58 = sub_100014FBC();
  *(v51 + 64) = v58;
  *(v51 + 32) = v55;
  *(v51 + 40) = v57;
  sub_1000C1A54();

  v155 = sub_1000C5524();
  v59 = sub_1000C56B4();
  v60 = swift_allocObject();
  *(v60 + 16) = v156;
  sub_1000C2144();
  sub_1000C4CB4();
  v61 = *(v172 + 8);
  v62 = v44;
  v63 = v162;
  v172 += 8;
  v160 = v61;
  v61(v62, v162);
  v64 = sub_1000C4CD4();
  v66 = v65;
  v158(v49, v159);
  v168 = v64;
  v169 = v66;
  v67 = sub_1000C4A84();
  v69 = v68;

  *(v60 + 56) = &type metadata for String;
  *(v60 + 64) = v58;
  v70 = v163;
  *(v60 + 32) = v67;
  *(v60 + 40) = v69;
  sub_1000C1A54();

  sub_1000C2144();
  v166 = v161;
  v167 = v70;
  sub_1000124CC(&qword_1000FC600, &qword_1000CA050);
  v71 = v165;
  sub_1000C4C94();
  if (v71)
  {
    return v160(v70, v63);
  }

  v73 = v153;
  v74 = v168;
  v160(v70, v63);
  if (v74)
  {
    v75 = v74;
    v76 = [v74 image];
    if (v76)
    {
      v77 = v76;
      type metadata accessor for CGImage(0);
      v170 = v78;
      v171 = &protocol witness table for CGImageRef;
      v168 = v77;
      v79 = sub_1000C4D54();
      (*(*(v79 - 8) + 56))(v73, 1, 1, v79);
      v80 = v154;
      sub_1000C4D64();
      v81 = 0;
    }

    else
    {
      v81 = 1;
      v80 = v154;
    }

    v82 = sub_1000C4D84();
    v83 = *(*(v82 - 8) + 56);
    v84 = 1;
    v83(v80, v81, 1, v82);
    v85 = [v75 icon];
    if (v85)
    {
      v86 = v85;
      type metadata accessor for CGImage(0);
      v170 = v87;
      v171 = &protocol witness table for CGImageRef;
      v168 = v86;
      v88 = sub_1000C4D54();
      (*(*(v88 - 8) + 56))(v73, 1, 1, v88);
      v89 = v152;
      sub_1000C4D64();
      v84 = 0;
      v90 = v151;
    }

    else
    {
      v90 = v151;
      v89 = v152;
    }

    v83(v89, v84, 1, v82);
    sub_100024420(v75, v90);
    v91 = [v75 primaryText];
    if (v91)
    {
      v92 = v91;
      v172 = sub_1000C5224();
      v94 = v93;
    }

    else
    {
      v172 = 0;
      v94 = 0;
    }

    v95 = v147;
    v96 = [v75 primaryColor];
    sub_1000C5224();

    if (v94)
    {
      sub_100024D80(v95);
      v97 = v141;
      v98 = v142;
      (*(v141 + 16))(v140, v95, v142);
      v99 = v149;
      sub_1000C2124();

      (*(v97 + 8))(v95, v98);
      v100 = 0;
    }

    else
    {

      v100 = 1;
      v99 = v149;
    }

    v101 = sub_1000C2134();
    v102 = *(v101 - 8);
    v172 = *(v102 + 56);
    v165 = v102 + 56;
    (v172)(v99, v100, 1, v101);
    v103 = [v75 secondaryText];
    v104 = v146;
    if (v103)
    {
      v105 = v103;
      v163 = sub_1000C5224();
      v107 = v106;
    }

    else
    {
      v163 = 0;
      v107 = 0;
    }

    v108 = [v75 secondaryColor];
    sub_1000C5224();

    if (v107)
    {
      v109 = v143;
      sub_100024D80(v143);
      v110 = v141;
      v111 = *(v141 + 16);
      v164 = v101;
      v112 = v109;
      v113 = v142;
      v111(v140, v112, v142);
      v114 = v145;
      v101 = v164;
      sub_1000C2124();

      v115 = v110;
      v104 = v146;
      (*(v115 + 8))(v143, v113);
      v116 = 0;
    }

    else
    {

      v116 = 1;
      v114 = v145;
    }

    v164 = v101;
    (v172)(v114, v116, 1, v101);
    v117 = [v75 tertiaryText];
    v118 = v144;
    if (v117)
    {
      v119 = v117;
      v163 = sub_1000C5224();
      v121 = v120;
    }

    else
    {
      v163 = 0;
      v121 = 0;
    }

    v122 = [v75 tertiaryColor];
    sub_1000C5224();

    if (v121)
    {
      sub_100024D80(v104);
      v123 = v137;
      v124 = v104;
      v125 = v141;
      v126 = v142;
      (*(v141 + 16))(v140, v124, v142);
      v127 = v133;
      sub_1000C2124();

      v118 = v144;
      (*(v125 + 8))(v146, v126);
      v128 = 0;
      v129 = v150;
      v130 = v148;
    }

    else
    {

      v128 = 1;
      v129 = v150;
      v130 = v148;
      v123 = v137;
      v127 = v133;
    }

    (v172)(v127, v128, 1, v164);
    sub_100018F28(v154, v138, &qword_1000FC5F8, &unk_1000CA040);
    sub_100018F28(v152, v139, &qword_1000FC5F8, &unk_1000CA040);
    (*(v130 + 16))(v118, v151, v129);
    sub_100018F28(v149, v134, &qword_1000FC5F0, &unk_1000CA030);
    v131 = v145;
    sub_100018F28(v145, v123, &qword_1000FC5F0, &unk_1000CA030);
    sub_100018F28(v127, v135, &qword_1000FC5F0, &unk_1000CA030);
    sub_1000C2154();

    sub_100018F90(v127, &qword_1000FC5F0, &unk_1000CA030);
    sub_100018F90(v131, &qword_1000FC5F0, &unk_1000CA030);
    sub_100018F90(v149, &qword_1000FC5F0, &unk_1000CA030);
    (*(v130 + 8))(v151, v150);
    sub_100018F90(v152, &qword_1000FC5F8, &unk_1000CA040);
    return sub_100018F90(v154, &qword_1000FC5F8, &unk_1000CA040);
  }

  else
  {
    sub_1000C4FC4();
    sub_100025100(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }
}

uint64_t sub_100024420@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31[7] = a2;
  v4 = sub_1000C4D24();
  v31[0] = *(v4 - 8);
  v5 = *(v31[0] + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v31 - v9;
  v11 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v31 - v13;
  v15 = sub_1000124CC(&qword_1000FC5F8, &unk_1000CA040);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v31 - v20;
  v22 = [a1 backgroundImage];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for CGImage(0);
    v31[4] = v24;
    v31[5] = &protocol witness table for CGImageRef;
    v31[1] = v23;
    v25 = sub_1000C4D54();
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    sub_1000C4D64();
    v26 = sub_1000C4D84();
    (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
  }

  else
  {
    v27 = sub_1000C4D84();
    (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  }

  v28 = [a1 backgroundColor];
  sub_1000C5224();

  sub_100024D80(v10);
  if (v2)
  {
    sub_100018F90(v21, &qword_1000FC5F8, &unk_1000CA040);
  }

  else
  {

    sub_100018F28(v21, v19, &qword_1000FC5F8, &unk_1000CA040);
    v30 = v31[0];
    (*(v31[0] + 16))(v8, v10, v4);
    sub_1000C2104();
    (*(v30 + 8))(v10, v4);
    return sub_100018F90(v21, &qword_1000FC5F8, &unk_1000CA040);
  }
}

uint64_t sub_1000247BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4CF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  sub_1000C4CB4();
  sub_1000C4CD4();
  (*(v5 + 8))(v8, v4);
  v10 = sub_1000C51F4();

  LOBYTE(v4) = [v9 fileExistsAtPath:v10 isDirectory:0];

  if (v4)
  {
    __chkstk_darwin(v11);
    *(&v13 - 2) = a2;
    *(&v13 - 1) = a1;
    sub_1000124CC(&qword_1000FC600, &qword_1000CA050);
    return sub_1000C4C94();
  }

  else
  {
    sub_1000C4FC4();
    sub_100025100(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }
}

void sub_100024A34(NSURL *a1@<X0>, NSURL *a2@<X1>, uint64_t *a3@<X8>)
{
  v26[0] = a2;
  v28 = a3;
  v27 = sub_1000C14E4();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v27);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C4CF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  v26[1] = a1;
  sub_1000C4CB4();
  sub_1000C4CD4();
  v14 = *(v9 + 8);
  v14(v12, v8);
  v15 = sub_1000C51F4();

  v16 = [v13 isWritableFileAtPath:v15];

  if (v16)
  {
    sub_1000C4CB4();
    sub_1000C4CE4();
    v14(v12, v8);
    sub_1000C1494(v17);
    v26[0] = v18;
    v19 = *(v4 + 8);
    v20 = v27;
    v19(v7, v27);
    sub_1000C4CB4();
    sub_1000C4CE4();
    v14(v12, v8);
    sub_1000C1494(v21);
    v23 = v22;
    v19(v7, v20);
    v24 = v26[0];
    MessagesPreview = PKPassSecurePreviewContextCreateMessagesPreview(v26[0], v23);

    *v28 = MessagesPreview;
  }

  else
  {
    sub_1000C4FC4();
    sub_100025100(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }
}

void sub_100024D80(uint64_t a1@<X8>)
{
  v3 = sub_1000124CC(&qword_1000FC608, qword_1000CA058);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1000C51F4();
  v8 = [objc_opt_self() colorFromString:v7];

  if (v8)
  {
    if ([v8 CGColor])
    {
      sub_1000C4D14();
      if (v1)
      {

        v9 = sub_1000C4D24();
        (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
        sub_100018F90(v6, &qword_1000FC608, qword_1000CA058);
        sub_1000C4FC4();
        sub_100025100(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
      }

      else
      {

        v10 = sub_1000C4D24();
        v11 = *(v10 - 8);
        (*(v11 + 56))(v6, 0, 1, v10);
        (*(v11 + 32))(a1, v6, v10);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000C4FC4();
    sub_100025100(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }
}

uint64_t sub_100025100(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100025164(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000254A4(*a1);
  v5 = v4;
  if (v3 == sub_1000254A4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_1000251EC()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000254A4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100025250()
{
  sub_1000254A4(*v0);
  sub_1000C52C4();
}

Swift::Int sub_1000252A4()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000254A4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_100025314()
{
  v0 = &stru_100000020;
  while (1)
  {
    v3 = *(&off_1000F1128 + v0);
    v4 = sub_1000254A4(v3);
    v6 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100099FF8(v4, v6);
    v9 = _swiftEmptyDictionarySingleton[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      break;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      sub_10003AEB0(v12, isUniquelyReferenced_nonNull_native);
      result = sub_100099FF8(v4, v6);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v13)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v18 = result;
    sub_10003B5C4();
    result = v18;
    if (v13)
    {
LABEL_2:
      v1 = result;

      *(_swiftEmptyDictionarySingleton[7] + v1) = v3;
      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    v15 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
    *v15 = v4;
    v15[1] = v6;
    *(_swiftEmptyDictionarySingleton[7] + result) = v3;
    v16 = _swiftEmptyDictionarySingleton[2];
    v11 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v11)
    {
      goto LABEL_16;
    }

    _swiftEmptyDictionarySingleton[2] = v17;
LABEL_3:
    if (++v0 == 118)
    {
      off_1000FC610 = _swiftEmptyDictionarySingleton;
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1000C5C54();
  __break(1u);
  return result;
}

uint64_t sub_1000254A4(char a1)
{
  result = 0x6974617275447661;
  switch(a1)
  {
    case 1:
      if (kPFMediaPropertyTimeZoneOffsetSeconds)
      {
        return sub_1000C5224();
      }

      __break(1u);
      goto LABEL_69;
    case 2:
      goto LABEL_72;
    case 3:
      v3 = &kCGImagePropertyOrientation;
      goto LABEL_133;
    case 4:
      goto LABEL_84;
    case 5:
      v3 = &kCGImagePropertyPixelHeight;
      goto LABEL_133;
    case 6:
      v3 = &kCGImagePropertyExifLensModel;
      goto LABEL_133;
    case 7:
      goto LABEL_95;
    case 8:
      v3 = &kCGImagePropertyProfileName;
      goto LABEL_133;
    case 9:
      if (kPFImagePropertyCustomPhotoProcessingFlags)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_95:
      v3 = &kCGImagePropertyExifLensMake;
      goto LABEL_133;
    case 10:
      goto LABEL_51;
    case 11:
      goto LABEL_62;
    case 12:
      v3 = &kCGImagePropertyExifExposureBiasValue;
      goto LABEL_133;
    case 13:
      v3 = &kCGImagePropertyExifFlash;
      goto LABEL_133;
    case 14:
LABEL_69:
      v3 = &kCGImagePropertyExifFocalLength;
      goto LABEL_133;
    case 15:
      goto LABEL_40;
    case 16:
      goto LABEL_76;
    case 17:
      v3 = &kCGImagePropertyExifMeteringMode;
      goto LABEL_133;
    case 18:
      goto LABEL_104;
    case 19:
      goto LABEL_81;
    case 20:
      goto LABEL_89;
    case 21:
      v3 = &kCGImagePropertyExifWhiteBalance;
      goto LABEL_133;
    case 22:
      goto LABEL_111;
    case 23:
      goto LABEL_66;
    case 24:
      if (kPFVideoPropertyVideoDynamicRange)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_66:
      v3 = &kCGImagePropertyCIFFWhiteBalanceIndex;
      goto LABEL_133;
    case 25:
      goto LABEL_118;
    case 26:
      goto LABEL_36;
    case 27:
      if (kPFVideoPropertyVideoContainsCinematicData)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_114:
      if (kPFMediaPropertyLivePhotoPairingIdentifier)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_116:
      if (kPFVideoPropertyCaptureMode)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_118:
      if (kPFImagePropertyHDRGain)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_120:
      if (kPFFilePropertyUniformTypeIdentifier)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_122:
      if (kPFImagePropertySmartStyleVideoCastValue)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_124:
      if (kPFFilePropertyOriginalFilename)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_126:
      v3 = &kCGImagePropertyGPSImgDirectionRef;
      goto LABEL_133;
    case 28:
      goto LABEL_114;
    case 29:
      v3 = &kCGImagePropertyGIFDelayTime;
      goto LABEL_133;
    case 30:
      if (kPFVideoPropertyPlaybackVariationIdentifier)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_76:
      v3 = &kCGImagePropertyExifISOSpeed;
      goto LABEL_133;
    case 31:
      if (kPFVideoPropertyVideoComplVideoDurationValue)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_99:
      v3 = &kCGImagePropertyGPSLatitude;
      goto LABEL_133;
    case 32:
      if (kPFVideoPropertyVideoComplVideoDurationTimescale)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_47:
      v3 = &kCGImagePropertyGPSSpeedRef;
      goto LABEL_133;
    case 33:
      goto LABEL_38;
    case 34:
      goto LABEL_30;
    case 35:
      return result;
    case 36:
      goto LABEL_32;
    case 37:
      goto LABEL_22;
    case 38:
      goto LABEL_116;
    case 39:
      if (kPFVideoPropertyVideoIsMontage)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_104:
      v3 = &kCGImagePropertyExifExposureTime;
      goto LABEL_133;
    case 40:
      if (kPFVideoPropertyIsProRes)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_58:
      if (kPFImagePropertySpatialOverCaptureIdentifier)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_60:
      if (kPFImagePropertySemanticStylePreset)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_62:
      v3 = &kCGImagePropertyExifFNumber;
      goto LABEL_133;
    case 41:
      if (kPFVideoPropertyVideoDurationValue)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_79:
      if (kPFImagePropertyStillImageCaptureFlags)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_81:
      v3 = &kCGImagePropertyTIFFModel;
      goto LABEL_133;
    case 42:
      goto LABEL_107;
    case 43:
      if (kPFMediaPropertyOriginatingAssetIdentifier)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_16:
      if (kPFImagePropertySmartStyleToneBias)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_18:
      if (kPFVideoPropertyCaptureModeTimelapse)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_20:
      if (kPFImagePropertySmartStyleIsReversible)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_22:
      if (kPFVideoPropertyCustomCodecFourCharCode)
      {
        return sub_1000C5224();
      }

      __break(1u);
      return 0x6953656C6946534ELL;
    case 44:
      goto LABEL_43;
    case 45:
      goto LABEL_99;
    case 46:
      v3 = &kCGImagePropertyGPSAltitude;
      goto LABEL_133;
    case 47:
      v3 = &kCGImagePropertyGPSSpeed;
      goto LABEL_133;
    case 48:
      goto LABEL_47;
    case 49:
      return 0x5465746144737067;
    case 50:
      goto LABEL_13;
    case 51:
      goto LABEL_132;
    case 52:
      goto LABEL_126;
    case 53:
      return 0x6953656C6946534ELL;
    case 54:
      goto LABEL_120;
    case 55:
      goto LABEL_124;
    case 56:
      if (kPFImagePropertyIsPhotoBooth)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_28:
      if (kPFImagePropertyIsAnimatedImage)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_30:
      if (kPFVideoPropertyVideoComplVideoImageDisplayTimescale)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_32:
      if (kPFVideoPropertyAVFPS)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_34:
      if (kPFImagePropertySmartStyleCast)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_36:
      if (kPFImagePropertyHasHDRGainMap)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_38:
      if (kPFVideoPropertyVideoComplVideoImageDisplayValue)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_40:
      v3 = &kCGImagePropertyExifFocalLenIn35mmFilm;
      goto LABEL_133;
    case 57:
      if (kPFImagePropertyBurstUuid)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_107:
      if (kPFVideoPropertyVideoDurationTimescale)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_109:
      if (kPFImagePropertyFrontFacingCamera)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_111:
      v3 = &kCGImagePropertyExifLightSource;
      goto LABEL_133;
    case 58:
      v3 = &kCGImagePropertyExifUserComment;
      goto LABEL_133;
    case 59:
      goto LABEL_109;
    case 60:
      goto LABEL_58;
    case 61:
      if (kPFImagePropertySemanticStyleSceneBias)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_84:
      v3 = &kCGImagePropertyPixelWidth;
      goto LABEL_133;
    case 62:
      goto LABEL_87;
    case 63:
      if (kPFImagePropertySemanticStyleRenderingVersion)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_72:
      v3 = &kCGImagePropertyExifSubsecTimeOriginal;
      goto LABEL_133;
    case 64:
      goto LABEL_60;
    case 65:
      if (kPFImagePropertySmartStyleHasSmartStyle)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_87:
      if (kPFImagePropertySemanticStyleWarmthBias)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_89:
      v3 = &kCGImagePropertyTIFFMake;
      goto LABEL_133;
    case 66:
      goto LABEL_16;
    case 67:
      if (kPFImagePropertySmartStyleColorBias)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_43:
      v3 = &kCGImagePropertyGPSLongitude;
      goto LABEL_133;
    case 68:
      goto LABEL_137;
    case 69:
      goto LABEL_34;
    case 70:
      if (kPFImagePropertySmartStyleRenderingVersion)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_11:
      if (kPFImagePropertyCameraUsedForCapture)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_13:
      v3 = &kCGImagePropertyGPSHPositioningError;
      goto LABEL_133;
    case 71:
      goto LABEL_20;
    case 72:
      goto LABEL_122;
    case 73:
      if (kPFImagePropertyIsHDR)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_130:
      if (kPFImagePropertyHasISOGainMap)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_132:
      v3 = &kCGImagePropertyGPSImgDirection;
      goto LABEL_133;
    case 74:
      goto LABEL_130;
    case 75:
      goto LABEL_28;
    case 76:
      goto LABEL_79;
    case 77:
      goto LABEL_11;
    case 78:
      if (kPFImagePropertyExifFlashFired)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_137:
      if (!kPFImagePropertySmartStyleIntensity)
      {
        __break(1u);
        JUMPOUT(0x100025AB8);
      }

      return sub_1000C5224();
    case 79:
      goto LABEL_8;
    case 80:
      goto LABEL_18;
    case 81:
      if (kPFImagePropertyHasSpatialAudio)
      {
        return sub_1000C5224();
      }

      __break(1u);
      return 0x5465746144737067;
    case 82:
      if (kPFImagePropertyIsAlchemist)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_51:
      v3 = &kCGImagePropertyExifCustomRendered;
      goto LABEL_133;
    case 83:
      goto LABEL_6;
    case 84:
      goto LABEL_4;
    case 85:
      v3 = &kCGImagePropertyIPTCCredit;
      goto LABEL_133;
    default:
      if (kPFMediaPropertyCreationDate)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_4:
      if (kPFImagePropertyGenerativeAIImageType)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_6:
      if (kPFImagePropertyIsThreeImageStereoHEIC)
      {
        return sub_1000C5224();
      }

      __break(1u);
LABEL_8:
      v3 = &kCGImagePropertyExifAuxFlashCompensation;
LABEL_133:
      v4 = *v3;
      return sub_1000C5224();
  }
}

uint64_t sub_100025C10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100028738(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100025C40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000254A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_100025C6C(void *a1)
{
  v2 = sub_1000C2B54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000124CC(&qword_1000FC618, &unk_1000CA098);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v117 - v9;
  v11 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v117 - v13;
  v15 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v117 - v20;
  result = [a1 syndicationProperties];
  if (result)
  {
    v120 = v21;
    v121 = v19;
    v122 = v14;
    v123 = v10;
    v124 = v6;
    v125 = v2;
    v23 = result;
    v24 = sub_1000C5194();

    v25 = 0;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 64);
    v29 = (v26 + 63) >> 6;
    v119 = enum case for MediaMetadata.AppleMakerNoteCamera.unknown(_:);
    v118 = (v3 + 104);
    v117 = (v3 + 56);
    while (1)
    {
      if (v28)
      {
        v30 = v25;
LABEL_17:
        v33 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v34 = v33 | (v30 << 6);
        v35 = (*(v24 + 48) + 16 * v34);
        v37 = *v35;
        v36 = v35[1];
        sub_10001D804(*(v24 + 56) + 32 * v34, v127);
        *&v128 = v37;
        *(&v128 + 1) = v36;
        sub_10001D8C8(v127, &v129);
      }

      else
      {
        v31 = v29 <= v25 + 1 ? v25 + 1 : v29;
        v32 = v31 - 1;
        while (1)
        {
          v30 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
            JUMPOUT(0x1000285E0);
          }

          if (v30 >= v29)
          {
            break;
          }

          v28 = *(v24 + 64 + 8 * v30);
          ++v25;
          if (v28)
          {
            v25 = v30;
            goto LABEL_17;
          }
        }

        v28 = 0;
        v129 = 0u;
        v130 = 0u;
        v25 = v32;
        v128 = 0u;
      }

      v131 = v128;
      v132[0] = v129;
      v132[1] = v130;
      v38 = *(&v128 + 1);
      if (!*(&v128 + 1))
      {
      }

      v39 = v131;
      sub_10001D8C8(v132, &v128);
      if (qword_1000FC000 != -1)
      {
        swift_once();
      }

      v40 = off_1000FC610;
      if (*(off_1000FC610 + 2))
      {
        v41 = sub_100099FF8(v39, v38);
        v43 = v42;

        if (v43)
        {
          switch(*(v40[7] + v41))
          {
            case 1:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v87 = v126;
                [v126 integerValue];
              }

              sub_1000C2A24();
              break;
            case 2:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v80 = v126;
                [v126 doubleValue];
              }

              sub_1000C2AD4();
              break;
            case 3:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v83 = v126;
                [v126 integerValue];
              }

              sub_1000C29F4();
              break;
            case 4:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v73 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_1000C29A4();
              break;
            case 5:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v93 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_1000C2A04();
              break;
            case 6:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2DF4();
              break;
            case 7:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2DC4();
              break;
            case 8:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C28E4();
              break;
            case 9:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v77 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_1000C2A44();
              break;
            case 0xA:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v99 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2A54();
              break;
            case 0xB:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v68 = v126;
                [v126 doubleValue];
              }

              sub_1000C2964();
              break;
            case 0xC:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v76 = v126;
                [v126 integerValue];
              }

              sub_1000C2A84();
              break;
            case 0xD:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v97 = v126;
                [v126 integerValue];
              }

              sub_1000C2D24();
              break;
            case 0xE:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v65 = v126;
                [v126 doubleValue];
              }

              sub_1000C28A4();
              break;
            case 0xF:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v81 = v126;
                [v126 doubleValue];
              }

              sub_1000C2AB4();
              break;
            case 0x10:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v62 = v126;
                [v126 integerValue];
              }

              sub_1000C29E4();
              break;
            case 0x11:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v89 = v126;
                [v126 integerValue];
              }

              sub_1000C2934();
              break;
            case 0x12:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v98 = v126;
                [v126 doubleValue];
              }

              sub_1000C2944();
              break;
            case 0x13:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2D44();
              break;
            case 0x14:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2D04();
              break;
            case 0x15:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v96 = v126;
                [v126 integerValue];
              }

              sub_1000C2954();
              break;
            case 0x16:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v103 = v126;
                [v126 integerValue];
              }

              sub_1000C28D4();
              break;
            case 0x17:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v106 = v126;
                [v126 integerValue];
              }

              sub_1000C2B94();
              break;
            case 0x18:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v79 = v126;
                [v126 integerValue];
              }

              sub_1000C2AA4();
              break;
            case 0x19:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v78 = v126;
                [v126 doubleValue];
              }

              sub_1000C2D64();
              break;
            case 0x1A:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v108 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2974();
              break;
            case 0x1B:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v60 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2C94();
              break;
            case 0x1C:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2864();
              break;
            case 0x1D:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v107 = v126;
                [v126 doubleValue];
              }

              sub_1000C2904();
              break;
            case 0x1E:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v100 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_1000C2B34();
              break;
            case 0x1F:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v88 = v126;
                [v126 doubleValue];
              }

              sub_1000C2CB4();
              break;
            case 0x20:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v101 = v126;
                [v126 doubleValue];
              }

              sub_1000C2CD4();
              break;
            case 0x21:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v66 = v126;
                [v126 doubleValue];
              }

              sub_1000C2CE4();
              break;
            case 0x22:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v61 = v126;
                [v126 doubleValue];
              }

              sub_1000C2CF4();
              break;
            case 0x23:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v57 = v126;
                [v126 doubleValue];
              }

              sub_1000C2884();
              break;
            case 0x24:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v58 = v126;
                [v126 doubleValue];
              }

              sub_1000C2D14();
              break;
            case 0x25:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2A74();
              break;
            case 0x26:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2894();
              break;
            case 0x27:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C29D4();
              break;
            case 0x28:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v74 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2DA4();
              break;
            case 0x29:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v90 = v126;
                [v126 doubleValue];
              }

              sub_1000C2AE4();
              break;
            case 0x2A:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v104 = v126;
                [v126 doubleValue];
              }

              sub_1000C2C04();
              break;
            case 0x2B:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2C74();
              break;
            case 0x2C:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v64 = v126;
                [v126 doubleValue];
              }

              sub_1000C2E04();
              break;
            case 0x2D:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v102 = v126;
                [v126 doubleValue];
              }

              sub_1000C2DB4();
              break;
            case 0x2E:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v110 = v126;
                [v126 doubleValue];
              }

              sub_1000C2D74();
              break;
            case 0x2F:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v55 = v126;
                [v126 doubleValue];
              }

              sub_1000C2D94();
              break;
            case 0x30:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C28B4();
              break;
            case 0x31:
              sub_10001D804(&v128, v127);
              v70 = sub_1000C15D4();
              v71 = v121;
              v72 = swift_dynamicCast();
              (*(*(v70 - 8) + 56))(v71, v72 ^ 1u, 1, v70);
              sub_1000C2914();
              break;
            case 0x32:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v50 = v126;
                [v126 doubleValue];
              }

              sub_1000C2B84();
              break;
            case 0x33:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v112 = v126;
                [v126 doubleValue];
              }

              sub_1000C29C4();
              break;
            case 0x34:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2A94();
              break;
            case 0x35:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v54 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_1000C2D84();
              break;
            case 0x36:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2BB4();
              break;
            case 0x37:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2A64();
              break;
            case 0x38:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v56 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2924();
              break;
            case 0x39:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C15E4();

              sub_1000C2DD4();
              break;
            case 0x3A:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C28F4();
              break;
            case 0x3B:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v105 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2AF4();
              break;
            case 0x3C:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2CA4();
              break;
            case 0x3D:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v92 = v126;
                [v126 doubleValue];
              }

              sub_1000C2BD4();
              break;
            case 0x3E:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v95 = v126;
                [v126 doubleValue];
              }

              sub_1000C2C14();
              break;
            case 0x3F:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v82 = v126;
                [v126 integerValue];
              }

              sub_1000C2CC4();
              break;
            case 0x40:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v75 = v126;
                [v126 integerValue];
              }

              sub_1000C2B04();
              break;
            case 0x41:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v94 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2994();
              break;
            case 0x42:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v51 = v126;
                [v126 doubleValue];
              }

              sub_1000C2AC4();
              break;
            case 0x43:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v63 = v126;
                [v126 doubleValue];
              }

              sub_1000C2B14();
              break;
            case 0x44:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v114 = v126;
                [v126 doubleValue];
              }

              sub_1000C2B24();
              break;
            case 0x45:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v59 = v126;
                [v126 doubleValue];
              }

              sub_1000C2A14();
              break;
            case 0x46:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v48 = v126;
                [v126 integerValue];
              }

              sub_1000C2C84();
              break;
            case 0x47:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v53 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2BE4();
              break;
            case 0x48:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v109 = v126;
                [v126 doubleValue];
              }

              sub_1000C2C64();
              break;
            case 0x49:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v111 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2D34();
              break;
            case 0x4A:
            case 0x4B:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v44 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2984();
              break;
            case 0x4C:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v91 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_1000C2BF4();
              break;
            case 0x4D:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v49 = v126;
                [v126 integerValue];
              }

              v115 = v125;
              (*v118)(v124, v119, v125);
              v116 = v123;
              sub_1000C2B44();
              (*v117)(v116, 0, 1, v115);
              sub_1000C2B64();
              break;
            case 0x4E:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v113 = v126;
                [v126 BOOLValue];
              }

              sub_1000C29B4();
              break;
            case 0x4F:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v47 = v126;
                [v126 doubleValue];
              }

              sub_1000C2C44();
              break;
            case 0x50:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v52 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2B74();
              break;
            case 0x51:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v69 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2A34();
              break;
            case 0x52:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v67 = v126;
                [v126 BOOLValue];
              }

              sub_1000C28C4();
              break;
            case 0x53:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v46 = v126;
                [v126 BOOLValue];
              }

              sub_1000C2BC4();
              break;
            case 0x54:
              sub_10001D804(&v128, v127);
              sub_1000146D8();
              if (swift_dynamicCast())
              {
                v45 = v126;
                [v126 doubleValue];
              }

              sub_1000C2BA4();
              break;
            case 0x55:
              sub_10001D804(&v128, v127);
              swift_dynamicCast();
              sub_1000C2874();
              break;
            default:
              sub_10001D804(&v128, v127);
              v84 = sub_1000C15D4();
              v85 = v120;
              v86 = swift_dynamicCast();
              (*(*(v84 - 8) + 56))(v85, v86 ^ 1u, 1, v84);
              sub_1000C2DE4();
              break;
          }
        }
      }

      else
      {
      }

      sub_100015F68(&v128);
    }
  }

  return result;
}