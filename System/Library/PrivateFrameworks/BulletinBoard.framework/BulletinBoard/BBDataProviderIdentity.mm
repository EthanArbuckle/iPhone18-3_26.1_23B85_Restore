@interface BBDataProviderIdentity
+ (id)identityForDataProvider:(id)a3;
+ (id)identityForRemoteDataProvider:(id)a3;
- (BBDataProviderIdentity)initWithCoder:(id)a3;
- (id)initForDataProvider:(id)a3 forRemoteDataProvider:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBDataProviderIdentity

+ (id)identityForDataProvider:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initForDataProvider:v4 forRemoteDataProvider:0];

  return v5;
}

+ (id)identityForRemoteDataProvider:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initForDataProvider:v4 forRemoteDataProvider:1];

  return v5;
}

- (id)initForDataProvider:(id)a3 forRemoteDataProvider:(BOOL)a4
{
  v4 = a4;
  v97[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(BBDataProviderIdentity *)self init];
  if (!v7)
  {
    goto LABEL_112;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFFFFD | v8);
  if (objc_opt_respondsToSelector())
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFFFFB | v9);
  if (objc_opt_respondsToSelector())
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFFFF7 | v10);
  if (objc_opt_respondsToSelector())
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFFFEF | v11);
  if (objc_opt_respondsToSelector())
  {
    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFFFDF | v12);
  if (objc_opt_respondsToSelector())
  {
    v13 = 64;
  }

  else
  {
    v13 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFFFBF | v13);
  if (objc_opt_respondsToSelector())
  {
    v14 = 128;
  }

  else
  {
    v14 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFFF7F | v14);
  if (objc_opt_respondsToSelector())
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFFEFF | v15);
  if (objc_opt_respondsToSelector())
  {
    v16 = 4096;
  }

  else
  {
    v16 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFEFFF | v16);
  if (objc_opt_respondsToSelector())
  {
    v17 = 512;
  }

  else
  {
    v17 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFFDFF | v17);
  if (objc_opt_respondsToSelector())
  {
    v18 = 1024;
  }

  else
  {
    v18 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFFBFF | v18);
  if (objc_opt_respondsToSelector())
  {
    v19 = 2048;
  }

  else
  {
    v19 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFF7FF | v19);
  if (objc_opt_respondsToSelector())
  {
    v20 = 0x2000;
  }

  else
  {
    v20 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFDFFF | v20);
  if (objc_opt_respondsToSelector())
  {
    v21 = 0x4000;
  }

  else
  {
    v21 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFFBFFF | v21);
  if (objc_opt_respondsToSelector())
  {
    v22 = 0x8000;
  }

  else
  {
    v22 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFF7FFF | v22);
  if (objc_opt_respondsToSelector())
  {
    v23 = 0x10000;
  }

  else
  {
    v23 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFEFFFF | v23);
  if (objc_opt_respondsToSelector())
  {
    v24 = 0x20000;
  }

  else
  {
    v24 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFDFFFF | v24);
  if (objc_opt_respondsToSelector())
  {
    v25 = 0x40000;
  }

  else
  {
    v25 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFFBFFFF | v25);
  if (objc_opt_respondsToSelector())
  {
    v26 = 0x80000;
  }

  else
  {
    v26 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFF7FFFF | v26);
  if (objc_opt_respondsToSelector())
  {
    v27 = 0x100000;
  }

  else
  {
    v27 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFEFFFFF | v27);
  if (objc_opt_respondsToSelector())
  {
    v28 = 0x200000;
  }

  else
  {
    v28 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFDFFFFF | v28);
  if (objc_opt_respondsToSelector())
  {
    v29 = 0x400000;
  }

  else
  {
    v29 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFFBFFFFF | v29);
  if (objc_opt_respondsToSelector())
  {
    v30 = 0x800000;
  }

  else
  {
    v30 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFF7FFFFF | v30);
  if (objc_opt_respondsToSelector())
  {
    v31 = 0x1000000;
  }

  else
  {
    v31 = 0;
  }

  v7->_traits = (*&v7->_traits & 0xFEFFFFFF | v31);
  v32 = [v6 sectionIdentifier];
  v33 = [v32 copy];
  sectionIdentifier = v7->_sectionIdentifier;
  v7->_sectionIdentifier = v33;

  if (!v7->_sectionIdentifier && v4)
  {
    v84 = MEMORY[0x277CBEAD8];
    v85 = *MEMORY[0x277CBE660];
    v96 = @"dataProvider";
    v97[0] = v6;
    v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:&v96 count:1];
    v87 = [v84 exceptionWithName:v85 reason:@"data providers must provide a valid sectionIdentifier" userInfo:v86];
    v88 = v87;

    objc_exception_throw(v87);
  }

  traits = v7->_traits;
  if ((*&traits & 0x400000) != 0)
  {
    v42 = [v6 universalSectionIdentifier];
    v43 = [v42 copy];
    universalSectionIdentifier = v7->_universalSectionIdentifier;
    v7->_universalSectionIdentifier = v43;

    traits = v7->_traits;
    if ((*&traits & 0x200) == 0)
    {
LABEL_78:
      if ((*&traits & 0x800000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_87;
    }
  }

  else if ((*&traits & 0x200) == 0)
  {
    goto LABEL_78;
  }

  v45 = [v6 defaultSectionInfo];
  v46 = [v45 copy];
  defaultSectionInfo = v7->_defaultSectionInfo;
  v7->_defaultSectionInfo = v46;

  traits = v7->_traits;
  if ((*&traits & 0x800000) == 0)
  {
LABEL_79:
    if ((*&traits & 0x4000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_87:
  v48 = [v6 parentSectionIdentifier];
  v49 = [v48 copy];
  parentSectionIdentifier = v7->_parentSectionIdentifier;
  v7->_parentSectionIdentifier = v49;

  traits = v7->_traits;
  if ((*&traits & 0x4000) != 0)
  {
LABEL_80:
    v36 = [v6 sectionDisplayName];
    v37 = [v36 copy];
    sectionDisplayName = v7->_sectionDisplayName;
    v7->_sectionDisplayName = v37;

    traits = v7->_traits;
  }

LABEL_81:
  if ((*&traits & 0x18000) != 0)
  {
    if ((*&traits & 0x8000) != 0)
    {
      v39 = [v6 sectionIcon];
      v40 = [v39 copy];
    }

    else
    {
      v39 = [v6 sectionIconData];
      if ([v39 length])
      {
        v40 = objc_alloc_init(BBSectionIcon);
        v41 = [BBSectionIconVariant variantWithFormat:0 imageData:v39];
        [(BBSectionIcon *)v40 addVariant:v41];
      }

      else
      {
        v40 = 0;
      }
    }

    sectionIcon = v7->_sectionIcon;
    v7->_sectionIcon = v40;

    traits = v7->_traits;
  }

  if ((*&traits & 0x1000) != 0)
  {
    v69 = [v6 sectionParameters];
    sectionParameters = v7->_sectionParameters;
    v7->_sectionParameters = v69;

    traits = v7->_traits;
    if ((*&traits & 0x400) == 0)
    {
LABEL_94:
      if ((*&traits & 0x800) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_115;
    }
  }

  else if ((*&traits & 0x400) == 0)
  {
    goto LABEL_94;
  }

  v71 = [v6 defaultSubsectionInfos];
  v72 = [v71 copy];
  defaultSubsectionInfos = v7->_defaultSubsectionInfos;
  v7->_defaultSubsectionInfos = v72;

  traits = v7->_traits;
  if ((*&traits & 0x800) == 0)
  {
LABEL_95:
    if ((*&traits & 0x80000) == 0)
    {
      goto LABEL_96;
    }

LABEL_129:
    v7->_syncsBulletinDismissal = [v6 syncsBulletinDismissal];
    if ((*&v7->_traits & 0x1000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_115:
  v74 = [MEMORY[0x277CBEB38] dictionary];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v75 = v7->_defaultSubsectionInfos;
  v76 = [(NSArray *)v75 countByEnumeratingWithState:&v89 objects:v95 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v90;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v90 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = [*(*(&v89 + 1) + 8 * i) subsectionID];
        if (v80)
        {
          v81 = [v6 displayNameForSubsectionID:v80];
          if (v81)
          {
            [v74 setObject:v81 forKey:v80];
          }
        }
      }

      v77 = [(NSArray *)v75 countByEnumeratingWithState:&v89 objects:v95 count:16];
    }

    while (v77);
  }

  if ([v74 count])
  {
    v82 = [v74 copy];
    subsectionDisplayNames = v7->_subsectionDisplayNames;
    v7->_subsectionDisplayNames = v82;
  }

  traits = v7->_traits;
  if ((*&traits & 0x80000) != 0)
  {
    goto LABEL_129;
  }

LABEL_96:
  if ((*&traits & 0x1000000) != 0)
  {
LABEL_97:
    v52 = [v6 sectionBundlePath];
    sectionBundlePath = v7->_sectionBundlePath;
    v7->_sectionBundlePath = v52;
  }

LABEL_98:
  if (objc_opt_respondsToSelector())
  {
    v54 = [v6 _sortKey];
    v55 = [v54 copy];
    sortKey = v7->_sortKey;
    v7->_sortKey = v55;
  }

  if (!v7->_sectionParameters)
  {
    v57 = BBLogGeneral;
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v7->_sectionIdentifier;
      *buf = 138543362;
      v94 = v58;
      _os_log_impl(&dword_241EFF000, v57, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Data provider <%{public}@> provided no section parameters. Using default parameters.", buf, 0xCu);
    }

    v59 = objc_alloc_init(BBSectionParameters);
    v60 = v7->_sectionParameters;
    v7->_sectionParameters = v59;
  }

  if (!v7->_defaultSectionInfo)
  {
    v61 = BBLogGeneral;
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v62 = v7->_sectionIdentifier;
      *buf = 138543362;
      v94 = v62;
      _os_log_impl(&dword_241EFF000, v61, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Data provider <%{public}@> provided no default section info. Using defaults.", buf, 0xCu);
    }

    v63 = [BBSectionInfo defaultSectionInfoForType:0, v89];
    v64 = v7->_defaultSectionInfo;
    v7->_defaultSectionInfo = v63;
  }

  if (!v7->_sortDescriptors)
  {
    v65 = BBLogGeneral;
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v66 = v7->_sectionIdentifier;
      *buf = 138543362;
      v94 = v66;
      _os_log_impl(&dword_241EFF000, v65, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Data provider <%{public}@> is missing sort descriptors -- section will not be sorted!", buf, 0xCu);
    }
  }

  [(BBSectionInfo *)v7->_defaultSectionInfo setSectionID:v7->_sectionIdentifier, v89];
  [(BBSectionInfo *)v7->_defaultSectionInfo setDisplayName:v7->_sectionDisplayName];
  [(BBSectionInfo *)v7->_defaultSectionInfo setIcon:v7->_sectionIcon];
  [(BBSectionParameters *)v7->_sectionParameters setDisplayName:v7->_sectionDisplayName];
  [(BBSectionParameters *)v7->_sectionParameters setIcon:v7->_sectionIcon];
LABEL_112:

  v67 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = a3;
  v6 = [v4 dataWithBytes:&self->_traits length:4];
  [v5 encodeObject:v6 forKey:@"_traits"];
  [v5 encodeObject:self->_sortKey forKey:@"_sortKey"];
  [v5 encodeObject:self->_sectionIdentifier forKey:@"_sectionIdentifier"];
  [v5 encodeObject:self->_universalSectionIdentifier forKey:@"_universalSectionIdentifier"];
  [v5 encodeObject:self->_defaultSectionInfo forKey:@"_defaultSectionInfo"];
  [v5 encodeObject:self->_sectionDisplayName forKey:@"_sectionDisplayName"];
  [v5 encodeObject:self->_sectionIcon forKey:@"_sectionIcon"];
  [v5 encodeObject:self->_sortDescriptors forKey:@"_sortDescriptors"];
  [v5 encodeObject:self->_sectionParameters forKey:@"_sectionParameters"];
  [v5 encodeObject:self->_defaultSubsectionInfos forKey:@"_defaultSubsectionInfos"];
  [v5 encodeObject:self->_subsectionDisplayNames forKey:@"_subsectionDisplayNames"];
  [v5 encodeBool:self->_syncsBulletinDismissal forKey:@"_syncsBulletinDismissal"];
  [v5 encodeObject:self->_parentSectionIdentifier forKey:@"_parentSectionIdentifier"];
  [v5 encodeObject:self->_sectionBundlePath forKey:@"_sectionBundlePath"];
}

- (BBDataProviderIdentity)initWithCoder:(id)a3
{
  v46[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BBDataProviderIdentity *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_traits"];
    v7 = v6;
    if (v6)
    {
      [v6 getBytes:&v5->_traits length:4];
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sortKey"];
    sortKey = v5->_sortKey;
    v5->_sortKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sectionIdentifier"];
    sectionIdentifier = v5->_sectionIdentifier;
    v5->_sectionIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_universalSectionIdentifier"];
    universalSectionIdentifier = v5->_universalSectionIdentifier;
    v5->_universalSectionIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_defaultSectionInfo"];
    defaultSectionInfo = v5->_defaultSectionInfo;
    v5->_defaultSectionInfo = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sectionDisplayName"];
    sectionDisplayName = v5->_sectionDisplayName;
    v5->_sectionDisplayName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sectionIcon"];
    sectionIcon = v5->_sectionIcon;
    v5->_sectionIcon = v18;

    v20 = MEMORY[0x277CBEB98];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"_sortDescriptors"];

    v24 = [BBBulletin validSortDescriptorsFromSortDescriptors:v23];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sectionParameters"];
    sectionParameters = v5->_sectionParameters;
    v5->_sectionParameters = v26;

    v28 = MEMORY[0x277CBEB98];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v30 = [v28 setWithArray:v29];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"_defaultSubsectionInfos"];
    defaultSubsectionInfos = v5->_defaultSubsectionInfos;
    v5->_defaultSubsectionInfos = v31;

    v33 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v35 = [v33 setWithArray:v34];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"_subsectionDisplayNames"];
    subsectionDisplayNames = v5->_subsectionDisplayNames;
    v5->_subsectionDisplayNames = v36;

    v5->_syncsBulletinDismissal = [v4 decodeBoolForKey:@"_syncsBulletinDismissal"];
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_parentSectionIdentifier"];
    parentSectionIdentifier = v5->_parentSectionIdentifier;
    v5->_parentSectionIdentifier = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sectionBundlePath"];
    sectionBundlePath = v5->_sectionBundlePath;
    v5->_sectionBundlePath = v40;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

@end