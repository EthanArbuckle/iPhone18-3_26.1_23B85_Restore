@interface HFUserPhotosLibraryItem
- (HFUserPhotosLibraryItem)init;
- (HFUserPhotosLibraryItem)initWithUser:(id)a3 inHome:(id)a4;
- (NSString)description;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFUserPhotosLibraryItem

- (HFUserPhotosLibraryItem)initWithUser:(id)a3 inHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 hf_allUsersIncludingCurrentUser];
  v10 = [v9 containsObject:v7];

  if (v10)
  {
    v16.receiver = self;
    v16.super_class = HFUserPhotosLibraryItem;
    v11 = [(HFUserPhotosLibraryItem *)&v16 init];
    p_isa = &v11->super.super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_user, a3);
      objc_storeStrong(p_isa + 7, a4);
    }

    self = p_isa;
    v13 = self;
  }

  else
  {
    v14 = [v8 hf_allUsersIncludingCurrentUser];
    NSLog(&cfstr_SHomeDoesnTInc.isa, self, "[HFUserPhotosLibraryItem initWithUser:inHome:]", v8, v7, v14);

    v13 = 0;
  }

  return v13;
}

- (HFUserPhotosLibraryItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithUser_inHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFUserPhotosLibraryItem.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HFUserPhotosLibraryItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFUserPhotosLibraryItem *)self user];
  v6 = [(HFUserPhotosLibraryItem *)self home];
  v7 = [v4 initWithUser:v5 inHome:v6];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v57[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HFUserPhotosLibraryItem *)self user];
  v6 = [HFUserNameFormatter alloc];
  v7 = [(HFUserPhotosLibraryItem *)self home];
  v8 = [(HFUserNameFormatter *)v6 initWithHome:v7];

  [(HFUserNameFormatter *)v8 setStyle:0];
  v9 = [(HFUserPhotosLibraryItem *)self home];
  v10 = [v9 hf_handleForUser:v5];

  if (+[HFUtilities isAMac])
  {
    v11 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
    v57[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];

    v13 = +[HFContactStore defaultStore];
    v14 = [v13 contactForUserHandle:v10 withKeys:v12];

    v15 = [MEMORY[0x277CBDA78] stringFromContact:v14 style:1000];
  }

  else
  {
    v15 = [(HFUserNameFormatter *)v8 stringForObjectValue:v10];
  }

  v22 = HFLocalizedStringWithFormat(@"HFFaceRecognitionUsersPhotosLibraryTableViewCellTitle", @"%@", v16, v17, v18, v19, v20, v21, v15);
  [v4 setObject:v22 forKeyedSubscript:@"title"];

  v23 = MEMORY[0x277CCABB0];
  v24 = [(HFUserPhotosLibraryItem *)self home];
  v25 = [v24 personManagerSettings];
  v26 = [v23 numberWithInt:{objc_msgSend(v25, "isFaceClassificationEnabled") ^ 1}];
  [v4 setObject:v26 forKeyedSubscript:@"isDisabled"];

  v27 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v4 setObject:v27 forKeyedSubscript:@"dependentHomeKitClasses"];

  v28 = [v5 photosPersonManagerSettings];
  if (v28)
  {
    v50 = v15;
    v29 = v8;
    v30 = v10;
    v31 = [(HFUserPhotosLibraryItem *)self user];
    v32 = [(HFUserPhotosLibraryItem *)self home];
    v33 = [v32 currentUser];
    v34 = [v31 isEqual:v33];

    v35 = [v28 isImportingFromPhotoLibraryEnabled];
    if (v34)
    {
      if (v35)
      {
        if ([v28 isSharingFaceClassificationsEnabled])
        {
          v36 = @"HFFaceRecognitionUsersPhotosLibraryTableViewCellDescriptionTextAnyoneInHome";
        }

        else
        {
          v36 = @"HFFaceRecognitionUsersPhotosLibraryTableViewCellDescriptionTextOnlyMe";
        }
      }

      else
      {
        v36 = @"HFFaceRecognitionUsersPhotosLibraryTableViewCellDescriptionTextNotConnected";
      }

      v10 = v30;
    }

    else
    {
      v10 = v30;
      if (!v35 || ([v28 isSharingFaceClassificationsEnabled] & 1) == 0)
      {
        [v4 setObject:0 forKeyedSubscript:@"description"];
        v41 = 1;
        v8 = v29;
LABEL_20:
        v15 = v50;
        goto LABEL_21;
      }

      v36 = @"HFFaceRecognitionUsersPhotosLibraryTableViewCellDescriptionTextShared";
    }

    v8 = v29;
    v42 = _HFLocalizedStringWithDefaultValue(v36, v36, 1);
    [v4 setObject:v42 forKeyedSubscript:@"description"];

    v43 = [(HFUserPhotosLibraryItem *)self home];
    v44 = [v43 personManagerSettings];
    v41 = [v44 isFaceClassificationEnabled] ^ 1;

    goto LABEL_20;
  }

  v37 = MEMORY[0x277CCACA8];
  v38 = [v5 name];
  v39 = [v37 stringWithFormat:@"externalPersonManagerSettings is nil for user %@", v38];

  v40 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v52 = self;
    v53 = 2080;
    v54 = "[HFUserPhotosLibraryItem _subclass_updateWithOptions:]";
    v55 = 2112;
    v56 = v39;
    _os_log_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_DEFAULT, "%@ (%s): %@", buf, 0x20u);
  }

  v41 = 1;
LABEL_21:
  v45 = [MEMORY[0x277CCABB0] numberWithBool:v41];
  [v4 setObject:v45 forKeyedSubscript:@"hidden"];

  v46 = [[HFItemUpdateOutcome alloc] initWithResults:v4];
  v47 = [MEMORY[0x277D2C900] futureWithResult:v46];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFUserPhotosLibraryItem *)self user];
  v5 = [v4 name];
  [v3 appendString:v5 withName:@"user"];

  v6 = [(HFUserPhotosLibraryItem *)self home];
  v7 = [v6 description];
  [v3 appendString:v7 withName:@"home"];

  v8 = [v3 build];

  return v8;
}

@end