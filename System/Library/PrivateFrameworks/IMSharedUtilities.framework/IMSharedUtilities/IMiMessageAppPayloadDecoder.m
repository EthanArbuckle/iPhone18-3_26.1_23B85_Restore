@interface IMiMessageAppPayloadDecoder
+ (id)decodeiMessageAppPayload:(id)a3 senderContext:(id)a4 bundleID:(id)a5 outAttachmentURLs:(id *)a6 error:(id *)a7;
@end

@implementation IMiMessageAppPayloadDecoder

+ (id)decodeiMessageAppPayload:(id)a3 senderContext:(id)a4 bundleID:(id)a5 outAttachmentURLs:(id *)a6 error:(id *)a7
{
  v86 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v50 = a4;
  v52 = a5;
  v11 = IMOSLoggingEnabled();
  v51 = v10;
  if (v10 && v52 && a6 && a7)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Invoking Blastdoor for payload data", buf, 2u);
      }
    }

    *buf = 0;
    v76 = buf;
    v77 = 0x3032000000;
    v78 = sub_1A8601EF8;
    v79 = sub_1A8602178;
    v80 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = sub_1A8601EF8;
    v73 = sub_1A8602178;
    v74 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_1A8601EF8;
    v67 = sub_1A8602178;
    v68 = 0;
    v62 = 0;
    v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10 options:1 error:&v62];
    v47 = v62;
    v48 = [v13 _FTOptionallyDecompressData];

    if ([v48 length])
    {
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = sub_1A86765B0;
      v61[3] = &unk_1E78285D8;
      v61[4] = &v63;
      v61[5] = buf;
      v61[6] = &v69;
      [IMAttachmentBlastdoor sendBalloonPluginPayloadData:v48 senderContext:v50 withBundleIdentifier:v52 completionBlock:v61];
      v14 = *(v76 + 5);
      if (v14 && !v64[5])
      {
        v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v70[5] contents];
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        obj = v58 = 0u;
        v20 = [obj countByEnumeratingWithState:&v57 objects:v81 count:16];
        if (v20)
        {
          v55 = *v58;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v58 != v55)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v57 + 1) + 8 * i);
              v23 = [MEMORY[0x1E696AEC0] stringGUID];
              v24 = [v23 stringByAppendingPathExtension:@"pluginPayloadAttachment"];

              v25 = [MEMORY[0x1E696AC08] defaultManager];
              v26 = [v25 im_randomTemporaryFileURLWithFileName:v24];

              v27 = [v22 content];
              v28 = [v27 type];

              if (v28)
              {
                if (v28 == 1)
                {
                  v29 = [v22 content];
                  v30 = [v29 other];
                  v31 = [v30 data];

                  v56 = 0;
                  LOBYTE(v30) = [v31 writeToURL:v26 options:1 error:&v56];
                  v32 = v56;
                  if ((v30 & 1) == 0 && IMOSLoggingEnabled())
                  {
                    v33 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                    {
                      *v82 = 138412290;
                      v83 = v32;
                      _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "IMiMessageAppPayloadDecoder Failed writing attachment to disk on incoming: %@", v82, 0xCu);
                    }
                  }

                  [v54 addObject:v26];
                }

                else
                {
                  v32 = 0;
                }
              }

              else
              {
                if (IMOSLoggingEnabled())
                {
                  v34 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                  {
                    *v82 = 0;
                    _os_log_impl(&dword_1A85E5000, v34, OS_LOG_TYPE_INFO, "Writing image plugin payload attachment to disk.", v82, 2u);
                  }
                }

                v35 = [v22 content];
                v36 = [v35 astc];
                v37 = [v36 image];
                v38 = [v37 cgImage];

                v39 = [v22 content];
                v40 = [v39 astc];
                v41 = [v40 originalUTIType];
                v42 = CGImageDestinationCreateWithURL(v26, v41, 1uLL, 0);

                if (v42)
                {
                  CGImageDestinationAddImage(v42, v38, 0);
                  if (CGImageDestinationFinalize(v42))
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
                    if (IMOSLoggingEnabled())
                    {
                      v44 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                      {
                        *v82 = 138412290;
                        v83 = v32;
                        _os_log_impl(&dword_1A85E5000, v44, OS_LOG_TYPE_INFO, "IMiMessageAppPayloadDecoder Failed writing astc encoded image attachment to disk on incoming:%@", v82, 0xCu);
                      }
                    }
                  }

                  CFRelease(v42);
                }

                else
                {
                  v32 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
                  if (IMOSLoggingEnabled())
                  {
                    v43 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                    {
                      *v82 = 138412290;
                      v83 = v26;
                      _os_log_impl(&dword_1A85E5000, v43, OS_LOG_TYPE_INFO, "IMiMessageAppPayloadDecoder Failed to create CGImageDestination for %@", v82, 0xCu);
                    }
                  }
                }

                [v54 addObject:v26];
              }
            }

            v20 = [obj countByEnumeratingWithState:&v57 objects:v81 count:16];
          }

          while (v20);
        }

        v45 = v54;
        *a6 = v54;
      }

      else
      {
        *(v76 + 5) = 0;

        v15 = v64[5];
        if (v15)
        {
          *a7 = v15;
        }
      }

      v17 = *(v76 + 5);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v82 = 138412546;
          v83 = v10;
          v84 = 2112;
          v85 = v47;
          _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Data loaded from sourceURL was nil: %@ with error: %@", v82, 0x16u);
        }
      }

      v19 = v47;
      v17 = 0;
      *a7 = v47;
    }

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v69, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (v11)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Invalid parameters", buf, 2u);
      }
    }

    v17 = 0;
  }

  return v17;
}

@end