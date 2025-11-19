@interface IMMapPreviewGenerator
+ (CGImage)newPreviewFromSourceURL:(id)a3 senderContext:(id)a4 withPreviewConstraints:(IMPreviewConstraints *)a5 error:(id *)a6;
+ (CGImage)newPreviewFromSourceURL:(id)a3 senderContext:(id)a4 withPreviewConstraints:(IMPreviewConstraints *)a5 interfaceStyle:(int64_t)a6 error:(id *)a7;
+ (CGSize)mapThumbnailFillSizeForWidth:(double)a3;
+ (CLLocationCoordinate2D)_legacyCoordinateForvCardURL:(id)a3;
+ (CLLocationCoordinate2D)coordinateForvCardURL:(id)a3 senderContext:(id)a4;
+ (id)UTITypes;
+ (id)mapSnapshotterQueue;
+ (id)titleBarMaskImageForWidth:(double)a3 constraints:(IMPreviewConstraints *)a4 error:(id *)a5;
+ (id)vCardDataForURL:(id)a3;
+ (id)vCardURLSForData:(id)a3;
+ (id)valueForKey:(id)a3 forURLComponents:(id)a4;
@end

@implementation IMMapPreviewGenerator

+ (id)UTITypes
{
  v5[1] = *MEMORY[0x1E69E9840];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], @"loc.vcf", *MEMORY[0x1E69638D8]);
  v5[0] = PreferredIdentifierForTag;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (CGImage)newPreviewFromSourceURL:(id)a3 senderContext:(id)a4 withPreviewConstraints:(IMPreviewConstraints *)a5 error:(id *)a6
{
  v6 = *&a5->var1.height;
  v8[0] = *&a5->var0;
  v8[1] = v6;
  v9 = *&a5->var3;
  return [a1 newPreviewFromSourceURL:a3 senderContext:a4 withPreviewConstraints:v8 interfaceStyle:1 error:a6];
}

+ (CGImage)newPreviewFromSourceURL:(id)a3 senderContext:(id)a4 withPreviewConstraints:(IMPreviewConstraints *)a5 interfaceStyle:(int64_t)a6 error:(id *)a7
{
  v78 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewMap", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  if (v12)
  {
    if (qword_1EB30B768 != -1)
    {
      sub_1A88C5D40();
    }

    v15 = [a1 coordinateForvCardURL:v12 senderContext:v13];
    v17 = v16;
    v19 = v18;
    if (off_1EB30B760(v15))
    {
      v20 = MEMORY[0x1AC570AA0](@"MKMapSnapshotOptions", @"MapKit");
      if (v20)
      {
        v21 = objc_alloc_init(v20);
        [v21 setMapType:0];
        v60 = [MEMORY[0x1AC570AA0](@"UITraitCollection" @"UIKit")];
        [v21 setTraitCollection:v60];
        [v21 _setUseSnapshotService:1];
        [a1 mapThumbnailFillSizeForWidth:a5->var0];
        v23 = v22;
        v25 = v24;
        if (qword_1EB30B778 != -1)
        {
          sub_1A88C5D68();
        }

        off_1EB30B770(v17, v19, 500.0, 500.0);
        [v21 setRegion:?];
        [v21 setSize:{v23 * (1.0 / a5->var2), v25 * (1.0 / a5->var2)}];
        v26 = MEMORY[0x1AC570AA0](@"MKMapSnapshotter", @"MapKit");
        if (!v26)
        {
          if (IMOSLoggingEnabled())
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v46 = objc_opt_class();
              *v74 = 138412802;
              *&v74[4] = v46;
              *&v74[12] = 2112;
              *&v74[14] = @"MKMapSnapshotter";
              *&v74[22] = 2112;
              v75 = @"MapKit";
              v47 = v46;
              _os_log_impl(&dword_1A85E5000, v45, OS_LOG_TYPE_INFO, "%@ = Failed weak linking %@ from %@.", v74, 0x20u);
            }
          }

          if (a7)
          {
            [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:10 userInfo:0];
            *a7 = Copy = 0;
          }

          else
          {
            Copy = 0;
          }

          goto LABEL_63;
        }

        v59 = [[v26 alloc] initWithOptions:v21];
        *v74 = 0;
        *&v74[8] = v74;
        *&v74[16] = 0x3032000000;
        v75 = sub_1A8601FF4;
        v76 = sub_1A86021E8;
        v77 = 0;
        v66 = 0;
        v67 = &v66;
        v68 = 0x2020000000;
        v69 = 0;
        v27 = dispatch_group_create();
        dispatch_group_enter(v27);
        v28 = [a1 mapSnapshotterQueue];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = sub_1A86EFD48;
        v61[3] = &unk_1E782B238;
        v64 = &v66;
        v65 = a1;
        v63 = v74;
        v29 = v27;
        v62 = v29;
        [v59 startWithQueue:v28 completionHandler:v61];

        v30 = dispatch_time(0, 20000000000);
        if (dispatch_group_wait(v29, v30))
        {
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = objc_opt_class();
              *buf = 138412290;
              *&buf[4] = v32;
              v33 = v32;
              _os_log_impl(&dword_1A85E5000, v31, OS_LOG_TYPE_INFO, "%@ - Map snapshot generation timed out", buf, 0xCu);
            }
          }

          if (a7)
          {
            *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:12 userInfo:0];
          }

          *(v67 + 24) = 0;
        }

        else if (v67[3])
        {
          v48 = MEMORY[0x1AC570AA0](@"_UIBackdropViewSettings", @"UIKit");
          if (v48)
          {
            if (a6 == 2)
            {
              v49 = 2030;
            }

            else
            {
              v49 = 2020;
            }

            v50 = *&a5->var1.height;
            *buf = *&a5->var0;
            v72 = v50;
            v73 = *&a5->var3;
            v51 = [a1 titleBarMaskImageForWidth:buf constraints:a7 error:{v23, v21}];
            if (v51)
            {
              v52 = [v48 settingsForPrivateStyle:v49 graphicsQuality:100];
              [v52 setGrayscaleTintMaskImage:v51];
              [v52 setColorTintMaskImage:v51];
              [v52 setFilterMaskImage:v51];
              v53 = [*(*&v74[8] + 40) _applyBackdropViewSettings:v52];
              v54 = *(*&v74[8] + 40);
              *(*&v74[8] + 40) = v53;

              Copy = CGImageCreateCopy([*(*&v74[8] + 40) CGImage]);
            }

            else
            {
              Copy = 0;
            }

            goto LABEL_62;
          }

          if (IMOSLoggingEnabled())
          {
            v55 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = objc_opt_class();
              *buf = 138412290;
              *&buf[4] = v56;
              v57 = v56;
              _os_log_impl(&dword_1A85E5000, v55, OS_LOG_TYPE_INFO, "%@ - Failed to link __UIBackdropViewSettingsClass", buf, 0xCu);
            }
          }

          if (!a7 || *a7)
          {
            goto LABEL_51;
          }

          goto LABEL_52;
        }

        if (!a7 || *a7)
        {
LABEL_51:
          Copy = 0;
LABEL_62:

          _Block_object_dispose(&v66, 8);
          _Block_object_dispose(v74, 8);

LABEL_63:
          goto LABEL_66;
        }

LABEL_52:
        [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
        *a7 = Copy = 0;
        goto LABEL_62;
      }

      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = objc_opt_class();
          *v74 = 138412802;
          *&v74[4] = v42;
          *&v74[12] = 2112;
          *&v74[14] = @"MKMapSnapshotOptions";
          *&v74[22] = 2112;
          v75 = @"MapKit";
          v43 = v42;
          _os_log_impl(&dword_1A85E5000, v41, OS_LOG_TYPE_INFO, "%@ = Failed weak linking %@ from %@.", v74, 0x20u);
        }
      }

      if (a7)
      {
        v37 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:10 userInfo:0];
        goto LABEL_35;
      }

LABEL_65:
      Copy = 0;
      goto LABEL_66;
    }

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *v74 = 138412546;
        *&v74[4] = v39;
        *&v74[12] = 2112;
        *&v74[14] = v12;
        v40 = v39;
        _os_log_impl(&dword_1A85E5000, v38, OS_LOG_TYPE_INFO, "%@ - Unable to parse coordinate for for %@", v74, 0x16u);
      }
    }

    if (!a7)
    {
      goto LABEL_65;
    }

    v37 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:11 userInfo:0];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = objc_opt_class();
        *v74 = 138412290;
        *&v74[4] = v35;
        v36 = v35;
        _os_log_impl(&dword_1A85E5000, v34, OS_LOG_TYPE_INFO, "%@ - sourceURL is nil", v74, 0xCu);
      }
    }

    if (!a7)
    {
      goto LABEL_65;
    }

    v37 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:5 userInfo:0];
  }

LABEL_35:
  Copy = 0;
  *a7 = v37;
LABEL_66:
  os_activity_scope_leave(&state);

  return Copy;
}

+ (id)mapSnapshotterQueue
{
  if (qword_1EB30B788 != -1)
  {
    sub_1A88C5D90();
  }

  v3 = qword_1EB30B780;

  return v3;
}

+ (CGSize)mapThumbnailFillSizeForWidth:(double)a3
{
  v3 = a3 / 1.33333333;
  v4 = round(a3);
  v5 = round(v3);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (id)vCardDataForURL:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:8 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)vCardURLSForData:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = MEMORY[0x1AC570AA0](@"CNContactVCardSerialization", @"Contacts");
    if (v4)
    {
      v12 = 0;
      v5 = [v4 contactsWithData:v3 error:&v12];
      v6 = v12;
      if (!v6 && v5 && [v5 count])
      {
        v7 = [v5 firstObject];
        v8 = [v7 urlAddresses];

        goto LABEL_17;
      }

      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v14 = v6;
          _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "IMMapPreviewGenerator - Unable to extract contact for data. Error %@", buf, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "IMMapPreviewGenerator - Unable to weaklink CNContactVCardSerialization", buf, 2u);
      }
    }
  }

  v8 = 0;
LABEL_17:

  return v8;
}

+ (CLLocationCoordinate2D)coordinateForvCardURL:(id)a3 senderContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[IMMapPreviewGenerator supportsBlastDoor])
  {
    if (qword_1EB30B798 != -1)
    {
      sub_1A88C5DA4();
    }

    v8 = [a1 vCardDataForURL:v6];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3010000000;
    v25 = 0.0;
    v26 = 0;
    v24 = &unk_1A8980B7F;
    v25 = sub_1A86F03C4();
    v26 = v9;
    if (v8)
    {
      v10 = dispatch_group_create();
      dispatch_group_enter(v10);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1A86F0400;
      v18[3] = &unk_1E7826900;
      v20 = &v21;
      v11 = v10;
      v19 = v11;
      [IMAttachmentBlastdoor sendData:v8 senderContext:v7 forPreviewType:0 withCompletionBlock:v18];
      dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      v12 = v22[4];
      v13 = v22[5];
    }

    else
    {
      v12 = v22[4];
      v13 = v22[5];
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    [a1 _legacyCoordinateForvCardURL:v6];
    v12 = v14;
    v13 = v15;
  }

  v16 = v12;
  v17 = v13;
  result.longitude = v17;
  result.latitude = v16;
  return result;
}

+ (CLLocationCoordinate2D)_legacyCoordinateForvCardURL:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (qword_1EB30B7A8 != -1)
  {
    sub_1A88C5DCC();
  }

  v5 = [a1 vCardDataForURL:v4];
  v6 = [a1 vCardURLSForData:v5];
  v7 = sub_1A86F03C4();
  v9 = v8;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = MEMORY[0x1E695DFF8];
        v16 = [*(*(&v29 + 1) + 8 * i) value];
        v17 = [v15 URLWithString:v16];

        v18 = [IMMapURLHelpers coordinatesFromURL:v17];
        if ([v18 count] == 2)
        {
          v19 = off_1EB30B7A0;
          v20 = [v18 objectAtIndex:0];
          [v20 doubleValue];
          v22 = v21;
          v23 = [v18 objectAtIndex:1];
          v24 = [v23 doubleValue];
          v7 = v19(v24, v22, v25);
          v9 = v26;

          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v27 = v7;
  v28 = v9;
  result.longitude = v28;
  result.latitude = v27;
  return result;
}

+ (id)valueForKey:(id)a3 forURLComponents:(id)a4
{
  v5 = a3;
  v6 = [a4 queryItems];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"name=%@", v5];

  v8 = [v6 filteredArrayUsingPredicate:v7];
  v9 = [v8 firstObject];

  v10 = [v9 value];

  return v10;
}

+ (id)titleBarMaskImageForWidth:(double)a3 constraints:(IMPreviewConstraints *)a4 error:(id *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v9 = qword_1EB30B7C8;
  v41 = qword_1EB30B7C8;
  if (!qword_1EB30B7C8)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1A86F1000;
    v43 = &unk_1E78261C8;
    v44 = &v38;
    sub_1A86F1000(buf);
    v9 = v39[3];
  }

  v10 = v9;
  _Block_object_dispose(&v38, 8);
  if (!v9 && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      *buf = 138412802;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = @"UIColor";
      *&buf[22] = 2112;
      v43 = @"UIKit";
      v13 = v12;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "%@ = Failed soft linking %@ from %@.", buf, 0x20u);
    }
  }

  if ((!sub_1A86F10B4() || !sub_1A86F11F8()) && IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      *buf = 138412802;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = @"UIGraphicsBeginImageContextWithOptions";
      *&buf[22] = 2112;
      v43 = @"UIKit";
      v16 = v15;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "%@ = Failed soft linking %@ from %@.", buf, 0x20u);
    }
  }

  if ((!sub_1A86F10B4() || !sub_1A86F1334()) && IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      *buf = 138412802;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = @"UIGraphicsGetImageFromCurrentImageContext";
      *&buf[22] = 2112;
      v43 = @"UIKit";
      v19 = v18;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "%@ = Failed soft linking %@ from %@.", buf, 0x20u);
    }
  }

  if ((!sub_1A86F10B4() || !sub_1A86F1470()) && IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      *buf = 138412802;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = @"UIRectFill";
      *&buf[22] = 2112;
      v43 = @"UIKit";
      v22 = v21;
      _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "%@ = Failed soft linking %@ from %@.", buf, 0x20u);
    }
  }

  if ((!sub_1A86F10B4() || !sub_1A86F15AC()) && IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      *buf = 138412802;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = @"UIGraphicsEndImageContext";
      *&buf[22] = 2112;
      v43 = @"UIKit";
      v25 = v24;
      _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "%@ = Failed soft linking %@ from %@.", buf, 0x20u);
    }
  }

  if (v9 && sub_1A86F10B4() && sub_1A86F11F8() && sub_1A86F10B4() && sub_1A86F1334() && sub_1A86F10B4() && sub_1A86F1470() && sub_1A86F10B4() && sub_1A86F15AC())
  {
    [a1 mapThumbnailFillSizeForWidth:{a3, v38}];
    v27 = v26;
    v29 = v28;
    var2 = a4->var2;
    v31 = sub_1A86F11F8();
    if (!v31 || (v31(0, v27, v29, 0.0), [v9 blackColor], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "set"), v32, (v33 = sub_1A86F1470()) == 0) || (v33(0.0, v29 - var2 * 37.5, v27), (v34 = sub_1A86F1334()) == 0) || (v34(), v35 = objc_claimAutoreleasedReturnValue(), (v36 = sub_1A86F15AC()) == 0))
    {
      sub_1A88C02E0();
      __break(1u);
      JUMPOUT(0x1A86F0E7CLL);
    }

    v36();
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:10 userInfo:{0, v38}];
    *a5 = v35 = 0;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

@end