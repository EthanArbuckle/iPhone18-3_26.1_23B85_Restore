@interface NTKCompanionConfigurationEditorController
- (NTKCFaceDetailComplicationPickerViewController)pickerViewController;
- (NTKCFaceDetailComplicationPickerViewControllerDelegate)delegate;
- (NTKCompanionConfigurationEditorController)init;
- (id)editorViewController:(id)a3 pickerViewController:(id)a4 delegate:(id)a5;
- (void)reset;
- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4;
@end

@implementation NTKCompanionConfigurationEditorController

- (NTKCompanionConfigurationEditorController)init
{
  v6.receiver = self;
  v6.super_class = NTKCompanionConfigurationEditorController;
  v2 = [(NTKCompanionConfigurationEditorController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CFA300]);
    [(NTKCompanionConfigurationEditorController *)v2 setService:v3];

    v4 = v2;
  }

  return v2;
}

- (id)editorViewController:(id)a3 pickerViewController:(id)a4 delegate:(id)a5
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v27 = 0;
    goto LABEL_53;
  }

  [(NTKCompanionConfigurationEditorController *)self setComplication:v8];
  [(NTKCompanionConfigurationEditorController *)self setDelegate:v10];
  [(NTKCompanionConfigurationEditorController *)self setPickerViewController:v9];
  v11 = v8;
  v12 = [v11 intent];
  v13 = [v12 extensionBundleId];

  v14 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      v28 = [v11 extensionBundleIdentifier];
      *buf = 138412290;
      v92 = v28;
      _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "Intent extensionBundleId was not set.  Setting to: %@", buf, 0xCu);
    }

    v24 = [v11 extensionBundleIdentifier];
    v25 = [v11 intent];
    [v25 _setExtensionBundleId:v24];
    goto LABEL_13;
  }

  if (v15)
  {
    v16 = [v11 intent];
    v17 = [v16 extensionBundleId];
    *buf = 138412290;
    v92 = v17;
    _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "Intent extensionBundleId is set to: %@", buf, 0xCu);
  }

  v18 = [v11 intent];
  v19 = [v18 extensionBundleId];
  v20 = [v11 extensionBundleIdentifier];
  v21 = [v19 isEqualToString:v20];

  if (v21)
  {
    goto LABEL_15;
  }

  v22 = [v11 extensionBundleIdentifier];
  v23 = [v11 intent];
  [v23 _setExtensionBundleId:v22];

  v24 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v11 intent];
    v26 = [v25 extensionBundleId];
    *buf = 138412290;
    v92 = v26;
    _os_log_impl(&dword_22D9C5000, v24, OS_LOG_TYPE_DEFAULT, "Intent extensionBundleId is now set to: %@", buf, 0xCu);

LABEL_13:
  }

LABEL_15:
  v82 = self;
  v29 = [(NTKCompanionConfigurationEditorController *)self service];
  v30 = [v29 allPairedDevices];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v87 objects:v98 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v88;
LABEL_17:
    v35 = 0;
    while (1)
    {
      if (*v88 != v34)
      {
        objc_enumerationMutation(v31);
      }

      v36 = *(*(&v87 + 1) + 8 * v35);
      if ([v36 deviceType] == 4)
      {
        break;
      }

      if (v33 == ++v35)
      {
        v33 = [v31 countByEnumeratingWithState:&v87 objects:v98 count:16];
        if (v33)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }
    }

    v37 = v36;

    if (!v37)
    {
      goto LABEL_42;
    }

    v78 = v31;
    v79 = v9;
    v80 = v8;
    v38 = objc_alloc_init(MEMORY[0x277D7D7E8]);
    v39 = [v11 intent];
    [v38 setIntent:v39];

    [v38 setFamily:CLKWidgetFamilyForComplicationFamily()];
    v77 = v37;
    v40 = [v37 deviceID];
    [v38 setRemoteDeviceIdentifier:v40];

    v41 = [MEMORY[0x277CBBAE8] currentDevice];
    v42 = NTKSharedWidgetComplicationProvider(v41);
    v43 = [v11 descriptor];
    v44 = [v42 infoForDescriptor:v43];

    v76 = v44;
    v45 = [v44 localizedAppName];
    v81 = v38;
    [v38 setRemoteAppLocalizedName:v45];

    +[NTKCompanionAppLibrary sharedAppLibrary];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v75 = v86 = 0u;
    v46 = [v75 allApps];
    v47 = [v46 countByEnumeratingWithState:&v83 objects:v97 count:16];
    if (v47)
    {
      v49 = v47;
      v50 = *v84;
      *&v48 = 138412546;
      v74 = v48;
      while (2)
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v84 != v50)
          {
            objc_enumerationMutation(v46);
          }

          v52 = *(*(&v83 + 1) + 8 * i);
          v53 = [v52 watchApplicationIdentifier];
          v54 = [v11 containerBundleIdentifier];
          v55 = [v53 isEqual:v54];

          if (v55)
          {
            v56 = [v52 icon];
            v57 = v56;
            if (v56)
            {
              [v56 size];
              v60 = v58;
              v61 = v59;
              if (v58 != 0.0 && v59 != 0.0)
              {
                UIGraphicsBeginImageContextWithOptions(*&v58, 0, 0.0);
                if (v60 >= v61)
                {
                  v66 = v61;
                }

                else
                {
                  v66 = v60;
                }

                v67 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v60, v61, v66 * 0.26}];
                [v67 addClip];
                [v57 drawInRect:{0.0, 0.0, v60, v61}];
                v68 = UIGraphicsGetImageFromCurrentImageContext();
                UIGraphicsEndImageContext();
                v69 = [MEMORY[0x277D79FC8] imageWithCGImage:{objc_msgSend(v68, "CGImage")}];
                [v81 setRemoteAppIcon:v69];

                goto LABEL_49;
              }

              v62 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                v101.width = v60;
                v101.height = v61;
                v63 = NSStringFromCGSize(v101);
                v64 = [v52 watchApplicationIdentifier];
                *buf = v74;
                v92 = v63;
                v93 = 2112;
                v94 = v64;
                _os_log_error_impl(&dword_22D9C5000, v62, OS_LOG_TYPE_ERROR, "Invalid icon size: %@ for app: %@", buf, 0x16u);
              }
            }

            else
            {
              v62 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                [(NTKCompanionConfigurationEditorController *)v95 editorViewController:v52 pickerViewController:&v96 delegate:v62];
              }
            }
          }
        }

        v49 = [v46 countByEnumeratingWithState:&v83 objects:v97 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_49:

    v70 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [v77 deviceID];
      *buf = 138412290;
      v92 = v71;
      _os_log_impl(&dword_22D9C5000, v70, OS_LOG_TYPE_DEFAULT, "Connecting to remoteDevice with ID: %@", buf, 0xCu);
    }

    v72 = [v11 ntk_localizedNameWithOptions:1 forRichComplicationSlot:1];
    [v81 setWidgetDisplayName:v72];

    v27 = [objc_alloc(MEMORY[0x277D7D7F0]) initWithOptions:v81];
    [v27 setDelegate:v82];

    v9 = v79;
    v8 = v80;
    v31 = v78;
  }

  else
  {
LABEL_23:

LABEL_42:
    v65 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v65, OS_LOG_TYPE_DEFAULT, "No CHSRemoteDevices were found... aborting", buf, 2u);
    }

    [(NTKCompanionConfigurationEditorController *)v82 reset];
    v27 = 0;
  }

LABEL_53:

  return v27;
}

- (void)reset
{
  [(NTKCompanionConfigurationEditorController *)self setComplication:0];
  [(NTKCompanionConfigurationEditorController *)self setDelegate:0];

  [(NTKCompanionConfigurationEditorController *)self setPickerViewController:0];
}

- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(NTKCompanionConfigurationEditorController *)self complication];
  v7 = [v6 intent];
  v8 = objc_alloc(MEMORY[0x277CBBBD0]);
  v9 = [v6 extensionBundleIdentifier];
  v10 = [v6 containerBundleIdentifier];
  v11 = [v6 kind];
  v12 = [v8 initWithExtensionBundleIdentifier:v9 containerBundleIdentifier:v10 kind:v11 intent:v5];

  v13 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 kind];
    v19 = 138412290;
    v20 = v14;
    _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "Widget Configuration did finish with widget kind: %@", &v19, 0xCu);
  }

  v15 = [NTKWidgetComplication complicationWithDescriptor:v12];
  v16 = [(NTKCompanionConfigurationEditorController *)self pickerViewController];
  [v16 dismissViewControllerAnimated:1 completion:0];

  v17 = [(NTKCompanionConfigurationEditorController *)self delegate];
  v18 = [(NTKCompanionConfigurationEditorController *)self pickerViewController];
  [v17 faceDetailComplicationPickerViewController:v18 didSelectComplication:v15];

  [(NTKCompanionConfigurationEditorController *)self reset];
}

- (NTKCFaceDetailComplicationPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NTKCFaceDetailComplicationPickerViewController)pickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerViewController);

  return WeakRetained;
}

- (void)editorViewController:(void *)a3 pickerViewController:(NSObject *)a4 delegate:.cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 watchApplicationIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_22D9C5000, a4, OS_LOG_TYPE_ERROR, "Icon is nil for app: %@", a1, 0xCu);
}

@end