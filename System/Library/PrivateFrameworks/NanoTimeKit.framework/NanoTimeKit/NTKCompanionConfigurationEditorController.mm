@interface NTKCompanionConfigurationEditorController
- (NTKCFaceDetailComplicationPickerViewController)pickerViewController;
- (NTKCFaceDetailComplicationPickerViewControllerDelegate)delegate;
- (NTKCompanionConfigurationEditorController)init;
- (id)editorViewController:(id)controller pickerViewController:(id)viewController delegate:(id)delegate;
- (void)reset;
- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent;
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

- (id)editorViewController:(id)controller pickerViewController:(id)viewController delegate:(id)delegate
{
  v99 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  delegateCopy = delegate;
  if (!controllerCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v27 = 0;
    goto LABEL_53;
  }

  [(NTKCompanionConfigurationEditorController *)self setComplication:controllerCopy];
  [(NTKCompanionConfigurationEditorController *)self setDelegate:delegateCopy];
  [(NTKCompanionConfigurationEditorController *)self setPickerViewController:viewControllerCopy];
  v11 = controllerCopy;
  intent = [v11 intent];
  extensionBundleId = [intent extensionBundleId];

  v14 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!extensionBundleId)
  {
    if (v15)
    {
      extensionBundleIdentifier = [v11 extensionBundleIdentifier];
      *buf = 138412290;
      v92 = extensionBundleIdentifier;
      _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "Intent extensionBundleId was not set.  Setting to: %@", buf, 0xCu);
    }

    extensionBundleIdentifier2 = [v11 extensionBundleIdentifier];
    intent2 = [v11 intent];
    [intent2 _setExtensionBundleId:extensionBundleIdentifier2];
    goto LABEL_13;
  }

  if (v15)
  {
    intent3 = [v11 intent];
    extensionBundleId2 = [intent3 extensionBundleId];
    *buf = 138412290;
    v92 = extensionBundleId2;
    _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "Intent extensionBundleId is set to: %@", buf, 0xCu);
  }

  intent4 = [v11 intent];
  extensionBundleId3 = [intent4 extensionBundleId];
  extensionBundleIdentifier3 = [v11 extensionBundleIdentifier];
  v21 = [extensionBundleId3 isEqualToString:extensionBundleIdentifier3];

  if (v21)
  {
    goto LABEL_15;
  }

  extensionBundleIdentifier4 = [v11 extensionBundleIdentifier];
  intent5 = [v11 intent];
  [intent5 _setExtensionBundleId:extensionBundleIdentifier4];

  extensionBundleIdentifier2 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(extensionBundleIdentifier2, OS_LOG_TYPE_DEFAULT))
  {
    intent2 = [v11 intent];
    extensionBundleId4 = [intent2 extensionBundleId];
    *buf = 138412290;
    v92 = extensionBundleId4;
    _os_log_impl(&dword_22D9C5000, extensionBundleIdentifier2, OS_LOG_TYPE_DEFAULT, "Intent extensionBundleId is now set to: %@", buf, 0xCu);

LABEL_13:
  }

LABEL_15:
  selfCopy = self;
  service = [(NTKCompanionConfigurationEditorController *)self service];
  allPairedDevices = [service allPairedDevices];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v31 = allPairedDevices;
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
    v79 = viewControllerCopy;
    v80 = controllerCopy;
    v38 = objc_alloc_init(MEMORY[0x277D7D7E8]);
    intent6 = [v11 intent];
    [v38 setIntent:intent6];

    [v38 setFamily:CLKWidgetFamilyForComplicationFamily()];
    v77 = v37;
    deviceID = [v37 deviceID];
    [v38 setRemoteDeviceIdentifier:deviceID];

    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    v42 = NTKSharedWidgetComplicationProvider(currentDevice);
    descriptor = [v11 descriptor];
    v44 = [v42 infoForDescriptor:descriptor];

    v76 = v44;
    localizedAppName = [v44 localizedAppName];
    v81 = v38;
    [v38 setRemoteAppLocalizedName:localizedAppName];

    +[NTKCompanionAppLibrary sharedAppLibrary];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v75 = v86 = 0u;
    allApps = [v75 allApps];
    v47 = [allApps countByEnumeratingWithState:&v83 objects:v97 count:16];
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
            objc_enumerationMutation(allApps);
          }

          v52 = *(*(&v83 + 1) + 8 * i);
          watchApplicationIdentifier = [v52 watchApplicationIdentifier];
          containerBundleIdentifier = [v11 containerBundleIdentifier];
          v55 = [watchApplicationIdentifier isEqual:containerBundleIdentifier];

          if (v55)
          {
            icon = [v52 icon];
            v57 = icon;
            if (icon)
            {
              [icon size];
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
                watchApplicationIdentifier2 = [v52 watchApplicationIdentifier];
                *buf = v74;
                v92 = v63;
                v93 = 2112;
                v94 = watchApplicationIdentifier2;
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

        v49 = [allApps countByEnumeratingWithState:&v83 objects:v97 count:16];
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
      deviceID2 = [v77 deviceID];
      *buf = 138412290;
      v92 = deviceID2;
      _os_log_impl(&dword_22D9C5000, v70, OS_LOG_TYPE_DEFAULT, "Connecting to remoteDevice with ID: %@", buf, 0xCu);
    }

    v72 = [v11 ntk_localizedNameWithOptions:1 forRichComplicationSlot:1];
    [v81 setWidgetDisplayName:v72];

    v27 = [objc_alloc(MEMORY[0x277D7D7F0]) initWithOptions:v81];
    [v27 setDelegate:selfCopy];

    viewControllerCopy = v79;
    controllerCopy = v80;
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

    [(NTKCompanionConfigurationEditorController *)selfCopy reset];
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

- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent
{
  v21 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  complication = [(NTKCompanionConfigurationEditorController *)self complication];
  intent = [complication intent];
  v8 = objc_alloc(MEMORY[0x277CBBBD0]);
  extensionBundleIdentifier = [complication extensionBundleIdentifier];
  containerBundleIdentifier = [complication containerBundleIdentifier];
  kind = [complication kind];
  v12 = [v8 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier kind:kind intent:intentCopy];

  v13 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    kind2 = [complication kind];
    v19 = 138412290;
    v20 = kind2;
    _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "Widget Configuration did finish with widget kind: %@", &v19, 0xCu);
  }

  v15 = [NTKWidgetComplication complicationWithDescriptor:v12];
  pickerViewController = [(NTKCompanionConfigurationEditorController *)self pickerViewController];
  [pickerViewController dismissViewControllerAnimated:1 completion:0];

  delegate = [(NTKCompanionConfigurationEditorController *)self delegate];
  pickerViewController2 = [(NTKCompanionConfigurationEditorController *)self pickerViewController];
  [delegate faceDetailComplicationPickerViewController:pickerViewController2 didSelectComplication:v15];

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