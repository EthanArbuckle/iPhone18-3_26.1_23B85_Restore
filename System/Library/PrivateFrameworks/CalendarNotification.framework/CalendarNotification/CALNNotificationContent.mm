@interface CALNNotificationContent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForDiffingPurposesToContent:(id)a3;
- (BOOL)isEqualToContent:(id)a3;
- (CALNNotificationContent)initWithCoder:(id)a3;
- (id)_initWithTitle:(id)a3 subtitle:(id)a4 body:(id)a5 categoryIdentifier:(id)a6 sectionIdentifier:(id)a7 date:(id)a8 expirationDate:(id)a9 defaultActionURL:(id)a10 iconIdentifier:(id)a11 shouldHideTime:(BOOL)a12 shouldSuppressSyncDismissalWhenRemoved:(BOOL)a13 peopleIdentifiers:(id)a14 sound:(id)a15 userInfo:(id)a16 threadIdentifier:(id)a17 interruptionLevel:(unint64_t)a18 filterCriteria:(id)a19;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CALNNotificationContent

- (id)_initWithTitle:(id)a3 subtitle:(id)a4 body:(id)a5 categoryIdentifier:(id)a6 sectionIdentifier:(id)a7 date:(id)a8 expirationDate:(id)a9 defaultActionURL:(id)a10 iconIdentifier:(id)a11 shouldHideTime:(BOOL)a12 shouldSuppressSyncDismissalWhenRemoved:(BOOL)a13 peopleIdentifiers:(id)a14 sound:(id)a15 userInfo:(id)a16 threadIdentifier:(id)a17 interruptionLevel:(unint64_t)a18 filterCriteria:(id)a19
{
  v63 = a3;
  v62 = a4;
  v68 = a5;
  v67 = a6;
  v66 = a7;
  v65 = a8;
  v64 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a14;
  v28 = a15;
  v29 = a16;
  v30 = a17;
  v31 = a19;
  v69.receiver = self;
  v69.super_class = CALNNotificationContent;
  v32 = [(CALNNotificationContent *)&v69 init];
  if (v32)
  {
    v33 = [v63 copy];
    title = v32->_title;
    v32->_title = v33;

    v35 = [v62 copy];
    subtitle = v32->_subtitle;
    v32->_subtitle = v35;

    v37 = [v68 copy];
    body = v32->_body;
    v32->_body = v37;

    v39 = [v67 copy];
    categoryIdentifier = v32->_categoryIdentifier;
    v32->_categoryIdentifier = v39;

    v41 = [v66 copy];
    sectionIdentifier = v32->_sectionIdentifier;
    v32->_sectionIdentifier = v41;

    v43 = [v65 copy];
    date = v32->_date;
    v32->_date = v43;

    v45 = [v64 copy];
    expirationDate = v32->_expirationDate;
    v32->_expirationDate = v45;

    v47 = [v25 copy];
    defaultActionURL = v32->_defaultActionURL;
    v32->_defaultActionURL = v47;

    v49 = [v26 copy];
    iconIdentifier = v32->_iconIdentifier;
    v32->_iconIdentifier = v49;

    v32->_shouldHideTime = a12;
    v32->_shouldSuppressSyncDismissalWhenRemoved = a13;
    v51 = [v27 copy];
    peopleIdentifiers = v32->_peopleIdentifiers;
    v32->_peopleIdentifiers = v51;

    v53 = [v28 copy];
    sound = v32->_sound;
    v32->_sound = v53;

    v55 = [v29 copy];
    userInfo = v32->_userInfo;
    v32->_userInfo = v55;

    v57 = [v30 copy];
    threadIdentifier = v32->_threadIdentifier;
    v32->_threadIdentifier = v57;

    v32->_interruptionLevel = a18;
    v59 = [v31 copy];
    filterCriteria = v32->_filterCriteria;
    v32->_filterCriteria = v59;
  }

  return v32;
}

- (id)description
{
  v20 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v23 = [(CALNNotificationContent *)self title];
  v26 = ICSRedactString();
  v22 = [(CALNNotificationContent *)self subtitle];
  v24 = ICSRedactString();
  v21 = [(CALNNotificationContent *)self body];
  v25 = ICSRedactString();
  v18 = [(CALNNotificationContent *)self categoryIdentifier];
  v17 = [(CALNNotificationContent *)self sectionIdentifier];
  v16 = [(CALNNotificationContent *)self date];
  v15 = [(CALNNotificationContent *)self expirationDate];
  v13 = [(CALNNotificationContent *)self defaultActionURL];
  v14 = [(CALNNotificationContent *)self iconIdentifier];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNNotificationContent shouldHideTime](self, "shouldHideTime")}];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNNotificationContent shouldSuppressSyncDismissalWhenRemoved](self, "shouldSuppressSyncDismissalWhenRemoved")}];
  v10 = [(CALNNotificationContent *)self peopleIdentifiers];
  v3 = [(CALNNotificationContent *)self sound];
  v4 = [(CALNNotificationContent *)self threadIdentifier];
  v5 = [(CALNNotificationContent *)self interruptionLevel];
  v6 = [(CALNNotificationContent *)self filterCriteria];
  v7 = [(CALNNotificationContent *)self userInfo];
  v8 = [v20 stringWithFormat:@"<%@: %p>(title = %@, subtitle = %@, body = %@, categoryIdentifier = %@, sectionIdentifier = %@, date = %@, expirationDate = %@, defaultActionURL = %@, iconIdentifier = %@, shouldHideTime = %@, shouldSuppressSyncDismissalWhenRemoved = %@, peopleIdentifiers = %@, sound = %@, threadIdentifier = %@, interruptionLevel = %lu, filterCriteria = %@, userInfo = %@)", v19, self, v26, v24, v25, v18, v17, v16, v15, v13, v14, v12, v11, v10, v3, v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationContent *)self isEqualToContent:v4];

  return v5;
}

- (BOOL)isEqualToContent:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else if ([(CALNNotificationContent *)self isEqualForDiffingPurposesToContent:v4])
  {
    v5 = [(CALNNotificationContent *)self expirationDate];
    v6 = [(CALNNotificationContent *)v4 expirationDate];
    v7 = CalEqualObjects();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualForDiffingPurposesToContent:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v46 = 1;
  }

  else
  {
    v5 = [(CALNNotificationContent *)self title];
    v6 = [(CALNNotificationContent *)v4 title];
    v7 = CalEqualStrings();

    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = [(CALNNotificationContent *)self subtitle];
    v9 = [(CALNNotificationContent *)v4 subtitle];
    v10 = CalEqualStrings();

    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = [(CALNNotificationContent *)self body];
    v12 = [(CALNNotificationContent *)v4 body];
    v13 = CalEqualStrings();

    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = [(CALNNotificationContent *)self categoryIdentifier];
    v15 = [(CALNNotificationContent *)v4 categoryIdentifier];
    v16 = CalEqualStrings();

    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = [(CALNNotificationContent *)self sectionIdentifier];
    v18 = [(CALNNotificationContent *)v4 sectionIdentifier];
    v19 = CalEqualStrings();

    if (!v19)
    {
      goto LABEL_18;
    }

    v20 = [(CALNNotificationContent *)self date];
    v21 = [(CALNNotificationContent *)v4 date];
    v22 = CalEqualObjects();

    if (!v22)
    {
      goto LABEL_18;
    }

    v23 = [(CALNNotificationContent *)self defaultActionURL];
    v24 = [(CALNNotificationContent *)v4 defaultActionURL];
    v25 = CalEqualObjects();

    if (!v25)
    {
      goto LABEL_18;
    }

    v26 = [(CALNNotificationContent *)self iconIdentifier];
    v27 = [(CALNNotificationContent *)v4 iconIdentifier];
    v28 = CalEqualStrings();

    if (!v28)
    {
      goto LABEL_18;
    }

    v29 = [(CALNNotificationContent *)self shouldHideTime];
    if (v29 != [(CALNNotificationContent *)v4 shouldHideTime])
    {
      goto LABEL_18;
    }

    v30 = [(CALNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
    if (v30 != [(CALNNotificationContent *)v4 shouldSuppressSyncDismissalWhenRemoved])
    {
      goto LABEL_18;
    }

    v31 = [(CALNNotificationContent *)self peopleIdentifiers];
    v32 = [(CALNNotificationContent *)v4 peopleIdentifiers];
    v33 = CalEqualObjects();

    if (!v33)
    {
      goto LABEL_18;
    }

    v34 = [(CALNNotificationContent *)self sound];
    v35 = [(CALNNotificationContent *)v4 sound];
    v36 = CalEqualObjects();

    if (!v36)
    {
      goto LABEL_18;
    }

    v37 = [(CALNNotificationContent *)self userInfo];
    v38 = [(CALNNotificationContent *)v4 userInfo];
    v39 = CalEqualObjects();

    if (!v39)
    {
      goto LABEL_18;
    }

    v40 = [(CALNNotificationContent *)self threadIdentifier];
    v41 = [(CALNNotificationContent *)v4 threadIdentifier];
    v42 = CalEqualStrings();

    if (!v42)
    {
      goto LABEL_18;
    }

    v43 = [(CALNNotificationContent *)self interruptionLevel];
    if (v43 == [(CALNNotificationContent *)v4 interruptionLevel])
    {
      v44 = [(CALNNotificationContent *)self filterCriteria];
      v45 = [(CALNNotificationContent *)v4 filterCriteria];
      v46 = CalEqualStrings();
    }

    else
    {
LABEL_18:
      v46 = 0;
    }
  }

  return v46;
}

- (unint64_t)hash
{
  v3 = [(CALNNotificationContent *)self title];
  v4 = [v3 hash];

  v5 = [(CALNNotificationContent *)self subtitle];
  v6 = [v5 hash] ^ v4;

  v7 = [(CALNNotificationContent *)self body];
  v8 = [v7 hash];

  v9 = [(CALNNotificationContent *)self categoryIdentifier];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(CALNNotificationContent *)self sectionIdentifier];
  v12 = [v11 hash];

  v13 = [(CALNNotificationContent *)self date];
  v14 = v12 ^ [v13 hash];

  v15 = [(CALNNotificationContent *)self expirationDate];
  v16 = v10 ^ v14 ^ [v15 hash];

  v17 = [(CALNNotificationContent *)self defaultActionURL];
  v18 = [v17 hash];

  v19 = [(CALNNotificationContent *)self iconIdentifier];
  v20 = v18 ^ [v19 hash];

  v21 = [(CALNNotificationContent *)self sound];
  v22 = v20 ^ [v21 hash];

  v23 = [(CALNNotificationContent *)self userInfo];
  v24 = v16 ^ v22 ^ [v23 hash];

  v25 = [(CALNNotificationContent *)self shouldHideTime];
  v26 = [(CALNNotificationContent *)self peopleIdentifiers];
  v27 = v25 ^ [v26 hash];

  v28 = [(CALNNotificationContent *)self threadIdentifier];
  v29 = v27 ^ [v28 hash];

  v30 = v24 ^ v29 ^ [(CALNNotificationContent *)self interruptionLevel];
  v31 = [(CALNNotificationContent *)self filterCriteria];
  v32 = [v31 hash];

  v33 = [(CALNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  v34 = 2;
  if (!v33)
  {
    v34 = 0;
  }

  return v30 ^ v32 ^ v34;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v20 = [CALNMutableNotificationContent allocWithZone:a3];
  v24 = [(CALNNotificationContent *)self title];
  v23 = [(CALNNotificationContent *)self subtitle];
  v22 = [(CALNNotificationContent *)self body];
  v19 = [(CALNNotificationContent *)self categoryIdentifier];
  v18 = [(CALNNotificationContent *)self sectionIdentifier];
  v17 = [(CALNNotificationContent *)self date];
  v15 = [(CALNNotificationContent *)self expirationDate];
  v13 = [(CALNNotificationContent *)self defaultActionURL];
  v12 = [(CALNNotificationContent *)self iconIdentifier];
  v16 = [(CALNNotificationContent *)self shouldHideTime];
  v14 = [(CALNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  v4 = [(CALNNotificationContent *)self peopleIdentifiers];
  v5 = [(CALNNotificationContent *)self sound];
  v6 = [(CALNNotificationContent *)self userInfo];
  v7 = [(CALNNotificationContent *)self threadIdentifier];
  v8 = [(CALNNotificationContent *)self interruptionLevel];
  v9 = [(CALNNotificationContent *)self filterCriteria];
  BYTE1(v11) = v14;
  LOBYTE(v11) = v16;
  v21 = [(CALNNotificationContent *)v20 _initWithTitle:v24 subtitle:v23 body:v22 categoryIdentifier:v19 sectionIdentifier:v18 date:v17 expirationDate:v15 defaultActionURL:v13 iconIdentifier:v12 shouldHideTime:v11 shouldSuppressSyncDismissalWhenRemoved:v4 peopleIdentifiers:v5 sound:v6 userInfo:v7 threadIdentifier:v8 interruptionLevel:v9 filterCriteria:?];

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CALNNotificationContent *)self body];
  [v4 encodeObject:v5 forKey:@"body"];

  v6 = [(CALNNotificationContent *)self subtitle];
  [v4 encodeObject:v6 forKey:@"subtitle"];

  v7 = [(CALNNotificationContent *)self title];
  [v4 encodeObject:v7 forKey:@"title"];

  v8 = [(CALNNotificationContent *)self categoryIdentifier];
  [v4 encodeObject:v8 forKey:@"categoryIdentifier"];

  v9 = [(CALNNotificationContent *)self sectionIdentifier];
  [v4 encodeObject:v9 forKey:@"sectionIdentifier"];

  v10 = [(CALNNotificationContent *)self date];
  [v4 encodeObject:v10 forKey:@"date"];

  v11 = [(CALNNotificationContent *)self iconIdentifier];
  [v4 encodeObject:v11 forKey:@"iconIdentifier"];

  v12 = [(CALNNotificationContent *)self expirationDate];
  [v4 encodeObject:v12 forKey:@"expirationDate"];

  v13 = [(CALNNotificationContent *)self defaultActionURL];
  [v4 encodeObject:v13 forKey:@"defaultActionURL"];

  [v4 encodeBool:-[CALNNotificationContent shouldHideTime](self forKey:{"shouldHideTime"), @"shouldHideTime"}];
  [v4 encodeBool:-[CALNNotificationContent shouldSuppressSyncDismissalWhenRemoved](self forKey:{"shouldSuppressSyncDismissalWhenRemoved"), @"shouldSuppressSyncDismissalWhenRemoved"}];
  v14 = [(CALNNotificationContent *)self peopleIdentifiers];
  [v4 encodeObject:v14 forKey:@"peopleIdentifiers"];

  v15 = [(CALNNotificationContent *)self sound];
  [v4 encodeObject:v15 forKey:@"sound"];

  v16 = [(CALNNotificationContent *)self userInfo];
  [v4 encodeObject:v16 forKey:@"userInfo"];

  v17 = [(CALNNotificationContent *)self threadIdentifier];
  [v4 encodeObject:v17 forKey:@"threadIdentifier"];

  [v4 encodeInteger:-[CALNNotificationContent interruptionLevel](self forKey:{"interruptionLevel"), @"interruptionLevel"}];
  v18 = [(CALNNotificationContent *)self filterCriteria];
  [v4 encodeObject:v18 forKey:@"filterCriteria"];
}

- (CALNNotificationContent)initWithCoder:(id)a3
{
  v3 = a3;
  v32 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v26 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sectionIdentifier"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"defaultActionURL"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"iconIdentifier"];
  v21 = [v3 decodeBoolForKey:@"shouldHideTime"];
  v20 = [v3 decodeBoolForKey:@"shouldSuppressSyncDismissalWhenRemoved"];
  if (initWithCoder__onceToken != -1)
  {
    [CALNNotificationContent initWithCoder:];
  }

  v19 = [v3 decodeObjectOfClasses:initWithCoder__peopleIdentifiersClasses forKey:@"peopleIdentifiers"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sound"];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v5 setWithObjects:{v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v18 = [v3 decodeObjectOfClasses:v12 forKey:@"userInfo"];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
  v14 = [v3 decodeIntegerForKey:@"interruptionLevel"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"filterCriteria"];
  BYTE1(v17) = v20;
  LOBYTE(v17) = v21;
  v28 = [(CALNNotificationContent *)self _initWithTitle:v30 subtitle:v31 body:v32 categoryIdentifier:v26 sectionIdentifier:v25 date:v24 expirationDate:v29 defaultActionURL:v23 iconIdentifier:v22 shouldHideTime:v17 shouldSuppressSyncDismissalWhenRemoved:v19 peopleIdentifiers:v4 sound:v18 userInfo:v13 threadIdentifier:v14 interruptionLevel:v15 filterCriteria:?];

  return v28;
}

void __41__CALNNotificationContent_initWithCoder___block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCoder__peopleIdentifiersClasses;
  initWithCoder__peopleIdentifiersClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end