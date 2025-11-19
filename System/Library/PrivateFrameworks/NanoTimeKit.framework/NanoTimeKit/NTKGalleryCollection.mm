@interface NTKGalleryCollection
+ (id)_blackcombFacesForDevice:(id)a3;
+ (id)_newFacesExcludingRestrictedForDevice:(id)a3;
+ (id)_newFacesForDevice:(id)a3;
+ (id)_photoFacesForDevice:(id)a3;
+ (id)_whistlerSubdialsFacesForDevice:(id)a3;
+ (id)galleryCollectionsForDevice:(id)a3;
- (NTKGalleryCollectionDelegate)delegate;
- (id)faceAtIndex:(unint64_t)a3;
- (id)identifierForFaceAtIndex:(unint64_t)a3;
- (unint64_t)indexOfFace:(id)a3;
- (unint64_t)numberOfFaces;
- (void)enumerateFaceNamesUsingBlock:(id)a3;
@end

@implementation NTKGalleryCollection

+ (id)galleryCollectionsForDevice:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 pairingID];
    *buf = 138412290;
    v76 = v7;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Adding galleryCollectionsForDevice with uuid:%@", buf, 0xCu);
  }

  v62 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoTimeKit.face"];
  v8 = [v62 BOOLForKey:@"ShowInternalFaces"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__NTKGalleryCollection_galleryCollectionsForDevice___block_invoke;
  aBlock[3] = &unk_278784078;
  v9 = v4;
  v72 = v9;
  v73 = v8;
  v10 = _Block_copy(aBlock);
  if ([v9 isRunningGraceOrLater] && objc_msgSend(v9, "deviceCategory") != 1)
  {
    v11 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Adding Subdials/California/FullScreen faces collection", buf, 2u);
    }

    v12 = [a1 _whistlerSubdialsFacesForDevice:v9];
    [v5 addObject:v12];

    v13 = [a1 _blackcombFacesForDevice:v9];
    [v5 addObject:v13];
  }

  v14 = +[NTKFaceBundleManager sharedManager];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __52__NTKGalleryCollection_galleryCollectionsForDevice___block_invoke_6;
  v67[3] = &unk_2787840A0;
  v15 = v9;
  v68 = v15;
  v16 = v10;
  v70 = v16;
  v17 = v5;
  v69 = v17;
  [v14 enumerateFaceBundlesOnDevice:v15 includingLegacy:1 withBlock:v67];

  if ([v15 isPaired])
  {
    v18 = [v15 supportsPDRCapability:4067975928];
    v19 = _os_feature_enabled_impl();
    if (!v18 || (v19 & 1) == 0)
    {
      v20 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v20, OS_LOG_TYPE_DEFAULT, "Adding Photos faces collection", buf, 2u);
      }

      v21 = [a1 _photoFacesForDevice:v15];
      [v17 addObject:v21];
    }
  }

  [v17 sortUsingComparator:&__block_literal_global_115];
  if ([v15 collectionType] == 5 || NTKShowHardwareSpecificFaces())
  {
    v60 = a1;
    v22 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "Adding Zeus faces collection", buf, 2u);
    }

    v23 = +[NTKFaceBundleManager sharedManager];
    v24 = [v23 faceBundleForFaceStyle:14 onDevice:v15];

    if (v24)
    {
      v25 = (*(v16 + 2))(v16, v24);
      if (v25)
      {
        [v17 insertObject:v25 atIndex:0];
      }
    }

    if ((([v15 isZeusBlack] & 1) != 0 || NTKShowHardwareSpecificFaces()) && objc_msgSend(v15, "isRunningGraceOrLater"))
    {
      v26 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v26, OS_LOG_TYPE_DEFAULT, "Adding SpectrumZeus faces collection", buf, 2u);
      }

      v27 = +[NTKFaceBundleManager sharedManager];
      v28 = [v27 faceBundleForFaceStyle:42 onDevice:v15];

      if (v28)
      {
        v29 = (*(v16 + 2))(v16, v28);
        if (v29)
        {
          [v17 insertObject:v29 atIndex:0];
        }
      }
    }

    v30 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v30, OS_LOG_TYPE_DEFAULT, "Adding Poodle faces collection", buf, 2u);
    }

    v31 = +[NTKFaceBundleManager sharedManager];
    v32 = [v31 faceBundleForBundleIdentifier:@"com.apple.NTKPoodleFaceBundle" onDevice:v15];

    if (v32)
    {
      v33 = (*(v16 + 2))(v16, v32);
      if (v33)
      {
        [v17 insertObject:v33 atIndex:0];
      }
    }

    v34 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v34, OS_LOG_TYPE_DEFAULT, "Adding Hades faces collection", buf, 2u);
    }

    v35 = +[NTKFaceBundleManager sharedManager];
    v36 = [v35 faceBundleForBundleIdentifier:@"com.apple.NTKHadesFaceBundle" onDevice:v15];

    if (v36)
    {
      v37 = (*(v16 + 2))(v16, v36);
      if (v37)
      {
        [v17 insertObject:v37 atIndex:0];
      }
    }

    v38 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v38, OS_LOG_TYPE_DEFAULT, "Adding Secretariat faces collection", buf, 2u);
    }

    v39 = +[NTKFaceBundleManager sharedManager];
    v40 = [v39 faceBundleForBundleIdentifier:@"com.apple.NTKSecretariatFaceBundle" onDevice:v15];

    if (v40)
    {
      v41 = (*(v16 + 2))(v16, v40);
      if (v41)
      {
        [v17 insertObject:v41 atIndex:0];
      }
    }

    v42 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v42, OS_LOG_TYPE_DEFAULT, "Adding Bellona faces collection", buf, 2u);
    }

    v43 = +[NTKFaceBundleManager sharedManager];
    v44 = [v43 faceBundleForBundleIdentifier:@"com.apple.NTKBellonaFaceBundle" onDevice:v15];

    if (v44)
    {
      v45 = (*(v16 + 2))(v16, v44);
      if (v45)
      {
        [v17 insertObject:v45 atIndex:0];
      }
    }

    v46 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v46, OS_LOG_TYPE_DEFAULT, "Adding Squall faces collection", buf, 2u);
    }

    v47 = +[NTKFaceBundleManager sharedManager];
    v48 = [v47 faceBundleForBundleIdentifier:@"com.apple.NTKSquallFaceBundle" onDevice:v15];

    if (v48)
    {
      v49 = (*(v16 + 2))(v16, v48);
      if (v49)
      {
        [v17 insertObject:v49 atIndex:0];
      }
    }

    a1 = v61;
  }

  if (NTKGizmoOrCompanionAreRussian(v15))
  {
    v50 = [a1 _newFacesExcludingRestrictedForDevice:v15];
  }

  else
  {
    v50 = [a1 _newFacesForDevice:v15];
  }

  v51 = v50;
  if ([v50 hasNewFaces])
  {
    [v17 insertObject:v51 atIndex:0];
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v52 = v17;
  v53 = [v52 countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v64;
    do
    {
      v56 = 0;
      do
      {
        if (*v64 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v63 + 1) + 8 * v56);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v57 loadFaces];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v57 loadFacesWithCompletion:0];
          }
        }

        ++v56;
      }

      while (v54 != v56);
      v54 = [v52 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v54);
  }

  v58 = v52;
  return v52;
}

NTKFacesBundleArrayGalleryCollection *__52__NTKGalleryCollection_galleryCollectionsForDevice___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 galleryTitleForDevice:*(a1 + 32)];
  if ([v4 length])
  {
    v5 = [v3 faceClass];
    if ((*(a1 + 40) & 1) != 0 || ![v5 _isInternalOnlyForDevice:*(a1 + 32)])
    {
      v10 = [[NTKFacesBundleArrayGalleryCollection alloc] initWithDevice:*(a1 + 32) faceBundle:v3];
      goto LABEL_11;
    }

    v6 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v13 = 138412290;
      v14 = v8;
      v9 = "Skipping internal bundle: %@";
LABEL_9:
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, v9, &v13, 0xCu);
    }
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v8 = NSStringFromClass(v11);
      v13 = 138412290;
      v14 = v8;
      v9 = "Skipping bundle: %@";
      goto LABEL_9;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

void __52__NTKGalleryCollection_galleryCollectionsForDevice___block_invoke_6(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isHardwareSpecific] & 1) == 0)
  {
    v4 = [v3 galleryTitleForDevice:*(a1 + 32)];
    v5 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Adding bundled faces collection %@", &v7, 0xCu);
    }

    v6 = (*(*(a1 + 48) + 16))();
    if (v6)
    {
      [*(a1 + 40) addObject:v6];
    }
  }
}

uint64_t __52__NTKGalleryCollection_galleryCollectionsForDevice___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

+ (id)_newFacesExcludingRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKWhatsNewFacesGalleryCollectionExcludingRestricted alloc] initWithDevice:v3];

  return v4;
}

+ (id)_newFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKWhatsNewFacesGalleryCollection alloc] initWithDevice:v3];

  return v4;
}

+ (id)_photoFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKCPhotoFaceCollectionGalleryCollection alloc] initForDevice:v3];

  return v4;
}

+ (id)_whistlerSubdialsFacesForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)[NTKWhistlerSubdialsFacesGalleryCollection alloc] initWithDevice:v3];
  }

  return v4;
}

+ (id)_blackcombFacesForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)[NTKBlackcombFacesGalleryCollection alloc] initWithDevice:v3];
  }

  return v4;
}

- (void)enumerateFaceNamesUsingBlock:(id)a3
{
  v9 = a3;
  if ([(NTKGalleryCollection *)self numberOfFaces])
  {
    v4 = 0;
    do
    {
      v5 = [(NTKGalleryCollection *)self calloutName];

      if (v5)
      {
        v6 = [(NTKGalleryCollection *)self calloutName];
        v7 = [(NTKGalleryCollection *)self faceAtIndex:v4];
        v8 = (v6)[2](v6, v7);
        v9[2](v9, v8);
      }

      ++v4;
    }

    while (v4 < [(NTKGalleryCollection *)self numberOfFaces]);
  }
}

- (id)identifierForFaceAtIndex:(unint64_t)a3
{
  v3 = [(NTKGalleryCollection *)self faceAtIndex:a3];
  v4 = v3;
  if (v3)
  {
    if ([v3 faceStyle] == 44)
    {
      [v4 bundleIdentifier];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"face%lld", objc_msgSend(v4, "faceStyle")];
    }
    v6 = ;
    v7 = [v4 configuration];
    v8 = [v7 validationString];
    v9 = [v8 copy];

    v10 = [v4 resourceDirectory];
    v11 = [v10 copy];

    v12 = @"<nil>";
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = @"<nil>";
    }

    if (v11)
    {
      v12 = v11;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", v6, v13, v12];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NTKGalleryCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)numberOfFaces
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (id)faceAtIndex:(unint64_t)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (unint64_t)indexOfFace:(id)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

@end