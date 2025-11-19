@interface CMInferenceUtils
+ (id)sharedInstance;
- (CMInferenceUtils)init;
- (id)_getNetworkPath:(id)a3 isE5:(BOOL)a4 fsNetworks:(id)a5;
- (id)availableImagingNetworksWithExtension:(id)a3;
- (id)getNetworkPath:(id)a3 isE5:(BOOL)a4;
- (void)init;
@end

@implementation CMInferenceUtils

+ (id)sharedInstance
{
  if (sharedInstance_once_0 != -1)
  {
    +[CMInferenceUtils sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __34__CMInferenceUtils_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CMInferenceUtils)init
{
  v39.receiver = self;
  v39.super_class = CMInferenceUtils;
  v2 = [(CMInferenceUtils *)&v39 init];
  if (!v2)
  {
    [CMInferenceUtils init];
LABEL_35:
    v14 = 0;
    goto LABEL_36;
  }

  v3 = [@"/System/Library/ImagingNetworks" stringByStandardizingPath];
  imagingNetworksPath = v2->_imagingNetworksPath;
  v2->_imagingNetworksPath = v3;

  v5 = [(CMInferenceUtils *)v2 availableImagingNetworksWithExtension:@".net"];
  networksV1 = v2->_networksV1;
  v2->_networksV1 = v5;

  if (!v2->_networksV1)
  {
    [CMInferenceUtils init];
    goto LABEL_35;
  }

  v7 = [(CMInferenceUtils *)v2 availableImagingNetworksWithExtension:@".bundle"];
  networksV2 = v2->_networksV2;
  v2->_networksV2 = v7;

  if (!v2->_networksV2)
  {
    [CMInferenceUtils init];
    goto LABEL_35;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [&unk_1F2248940 countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  v30 = *v36;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v36 != v30)
      {
        objc_enumerationMutation(&unk_1F2248940);
      }

      v12 = [*(*(&v35 + 1) + 8 * i) BOOLValue];
      if (v12)
      {
        v13 = 32;
      }

      else
      {
        v13 = 24;
      }

      v14 = FigCapturePlatformIdentifierString();
      if (v12 && FigCapturePlatformGetVariant() == 3)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@G", v14];

        v14 = v15;
      }

      if (!v14)
      {
        [CMInferenceUtils init];
        goto LABEL_36;
      }

      v16 = FigCaptureGetModelSpecificName();
      if (!v16)
      {
        v33 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v24 = v33;
        if (os_log_type_enabled(v23, type))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();

        goto LABEL_34;
      }

      v17 = v16;
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^.+(\\.|_)(%@|%@)(\\.|_).+$", v14, v16];
      v19 = objc_alloc(MEMORY[0x1E696AE70]);
      v31 = 0;
      v20 = [v19 initWithPattern:v18 options:1 error:&v31];
      v21 = v31;
      v22 = *(&v2->super.isa + v13);
      *(&v2->super.isa + v13) = v20;

      if (!*(&v2->super.isa + v13))
      {
        v33 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = v33;
        if (os_log_type_enabled(v26, type))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_34:
        goto LABEL_35;
      }
    }

    v10 = [&unk_1F2248940 countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_20:
  v14 = v2;
LABEL_36:

  return v14;
}

- (id)_getNetworkPath:(id)a3 isE5:(BOOL)a4 fsNetworks:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    [CMInferenceUtils _getNetworkPath:isE5:fsNetworks:];
LABEL_53:
    v27 = 0;
    v52 = 0;
    v53 = 0;
    v14 = 0;
    goto LABEL_37;
  }

  v10 = 24;
  if (v6)
  {
    v10 = 32;
  }

  v53 = *(&self->super.isa + v10);
  if (!v53)
  {
    v62 = 0;
    v61 = OS_LOG_TYPE_DEFAULT;
    v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_53;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@$", v8];
  v60 = 0;
  v12 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v11 options:0 error:&v60];
  v13 = v60;
  v14 = v13;
  v52 = v12;
  if (v12)
  {
    v47 = self;
    v48 = v13;
    v49 = v8;

    v50 = [MEMORY[0x1E695DF70] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v56 objects:v55 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v57;
      if (v6)
      {
        v18 = @".E5.espresso.bundle";
      }

      else
      {
        v18 = @".espresso.net";
      }

      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v57 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v56 + 1) + 8 * i);
          v21 = [v20 stringByReplacingOccurrencesOfString:v18 withString:&stru_1F216A3D0];
          v22 = [v21 rangeOfString:@"." options:4];
          if (v22 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = [v21 substringToIndex:v22];

            v21 = v23;
          }

          v24 = [v53 numberOfMatchesInString:v20 options:0 range:{0, objc_msgSend(v20, "length")}];
          v25 = [v12 firstMatchInString:v21 options:0 range:{0, objc_msgSend(v21, "length")}];

          if (v25)
          {
            v26 = v24 == 0;
          }

          else
          {
            v26 = 1;
          }

          if (!v26)
          {
            [v50 addObject:v20];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v56 objects:v55 count:16];
      }

      while (v16);
    }

    v27 = v50;
    if ([v50 count])
    {
      v8 = v49;
      if ([v50 count] < 2)
      {
        v31 = MEMORY[0x1E696AEC0];
        imagingNetworksPath = v47->_imagingNetworksPath;
        v33 = [v50 firstObject];
        v34 = [v31 stringWithFormat:@"%@/%s", imagingNetworksPath, objc_msgSend(v33, "UTF8String")];
        v35 = [v34 stringByStandardizingPath];

        v14 = v48;
        goto LABEL_43;
      }

      v62 = 0;
      v61 = OS_LOG_TYPE_DEFAULT;
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v29 = v62;
      if (os_log_type_enabled(v28, v61))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        [v50 count];
        v54 = [v50 componentsJoinedByString:{@", "}];
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v62 = 0;
      v61 = OS_LOG_TYPE_DEFAULT;
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v37 = v62;
      if (os_log_type_enabled(v36, v61))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        _os_log_send_and_compose_impl();
      }

      v14 = v48;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v8 = v49;
      v14 = v48;
    }
  }

  else
  {
    v62 = 0;
    v61 = OS_LOG_TYPE_DEFAULT;
    v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v45 = v62;
    if (os_log_type_enabled(v44, v61))
    {
      v46 = v45;
    }

    else
    {
      v46 = v45 & 0xFFFFFFFE;
    }

    if (v46)
    {
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v27 = 0;
    v52 = 0;
  }

LABEL_37:
  v62 = 0;
  v61 = OS_LOG_TYPE_DEFAULT;
  v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v40 = v62;
  if (os_log_type_enabled(v39, v61))
  {
    v41 = v40;
  }

  else
  {
    v41 = v40 & 0xFFFFFFFE;
  }

  if (v41)
  {
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();

  v35 = 0;
LABEL_43:

  return v35;
}

- (id)getNetworkPath:(id)a3 isE5:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![v6 length])
  {
    goto LABEL_8;
  }

  v7 = 8;
  if (v4)
  {
    v7 = 16;
  }

  v8 = [(CMInferenceUtils *)self _getNetworkPath:v6 isE5:v4 fsNetworks:*(&self->super.isa + v7)];
  if (!v8)
  {
LABEL_8:
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v8 = 0;
  }

  return v8;
}

- (id)availableImagingNetworksWithExtension:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  imagingNetworksPath = self->_imagingNetworksPath;
  v22 = 0;
  v8 = [v6 contentsOfDirectoryAtPath:imagingNetworksPath error:&v22];
  v9 = v22;

  if (v8)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([v15 hasSuffix:v4])
          {
            [v5 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v12);
    }
  }

  if (![v5 count])
  {

    v5 = 0;
  }

  return v5;
}

- (void)init
{
  OUTLINED_FUNCTION_0_57();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v9))
  {
    OUTLINED_FUNCTION_2_11("[CMInferenceUtils init]");
    OUTLINED_FUNCTION_3_26();
  }

  OUTLINED_FUNCTION_1_69();
}

- (void)_getNetworkPath:isE5:fsNetworks:.cold.1()
{
  OUTLINED_FUNCTION_0_57();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v9))
  {
    OUTLINED_FUNCTION_2_11("[CMInferenceUtils _getNetworkPath:isE5:fsNetworks:]");
    OUTLINED_FUNCTION_3_26();
  }

  OUTLINED_FUNCTION_1_69();
}

@end