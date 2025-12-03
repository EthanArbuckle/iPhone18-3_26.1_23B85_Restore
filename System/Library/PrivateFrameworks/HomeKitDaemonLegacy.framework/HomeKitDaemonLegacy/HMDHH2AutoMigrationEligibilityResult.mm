@interface HMDHH2AutoMigrationEligibilityResult
- (BOOL)isEqual:(id)equal;
- (HMDHH2AutoMigrationEligibilityResult)initWithStatus:(unint64_t)status iCloudAccountStatus:(unint64_t)accountStatus unsupportedDevices:(unint64_t)devices hasOnlyEmptyHomes:(BOOL)homes numberOwnedNonEmptyHomes:(unint64_t)emptyHomes numberUnownedSharedHomes:(unint64_t)sharedHomes numberOwnedSharedHomes:(unint64_t)ownedSharedHomes;
- (id)attributeDescriptions;
@end

@implementation HMDHH2AutoMigrationEligibilityResult

- (id)attributeDescriptions
{
  v30[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHH2AutoMigrationEligibilityResult *)self isEligible];
  v29 = HMFBooleanToString();
  v28 = [v3 initWithName:@"isEligible" value:v29];
  v30[0] = v28;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHH2AutoMigrationEligibilityResult status](self, "status")}];
  v26 = [v4 initWithName:@"status" value:v27];
  v30[1] = v26;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHH2AutoMigrationEligibilityResult iCloudAccountStatus](self, "iCloudAccountStatus")}];
  v24 = [v5 initWithName:@"iCloudAccountStatus" value:v25];
  v30[2] = v24;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHH2AutoMigrationEligibilityResult unsupportedDevices](self, "unsupportedDevices")}];
  v7 = [v6 initWithName:@"unsupportedDevices" value:v23];
  v30[3] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHH2AutoMigrationEligibilityResult *)self hasOnlyEmptyHomes];
  v9 = HMFBooleanToString();
  v10 = [v8 initWithName:@"hasOnlyEmptyHomes" value:v9];
  v30[4] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHH2AutoMigrationEligibilityResult numberOwnedNonEmptyHomes](self, "numberOwnedNonEmptyHomes")}];
  v13 = [v11 initWithName:@"numberOwnedNonEmptyHomes" value:v12];
  v30[5] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHH2AutoMigrationEligibilityResult numberUnownedSharedHomes](self, "numberUnownedSharedHomes")}];
  v16 = [v14 initWithName:@"numberUnownedSharedHomes" value:v15];
  v30[6] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHH2AutoMigrationEligibilityResult numberOwnedSharedHomes](self, "numberOwnedSharedHomes")}];
  v19 = [v17 initWithName:@"numberOwnedSharedHomes" value:v18];
  v30[7] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:8];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDHH2AutoMigrationEligibilityResult status](self, "status"), v7 == [v6 status]) && (v8 = -[HMDHH2AutoMigrationEligibilityResult iCloudAccountStatus](self, "iCloudAccountStatus"), v8 == objc_msgSend(v6, "iCloudAccountStatus")) && (v9 = -[HMDHH2AutoMigrationEligibilityResult unsupportedDevices](self, "unsupportedDevices"), v9 == objc_msgSend(v6, "unsupportedDevices")) && (v10 = -[HMDHH2AutoMigrationEligibilityResult hasOnlyEmptyHomes](self, "hasOnlyEmptyHomes"), v10 == objc_msgSend(v6, "hasOnlyEmptyHomes")) && (v11 = -[HMDHH2AutoMigrationEligibilityResult numberOwnedNonEmptyHomes](self, "numberOwnedNonEmptyHomes"), v11 == objc_msgSend(v6, "numberOwnedNonEmptyHomes")) && (v12 = -[HMDHH2AutoMigrationEligibilityResult numberUnownedSharedHomes](self, "numberUnownedSharedHomes"), v12 == objc_msgSend(v6, "numberUnownedSharedHomes")) && (v13 = -[HMDHH2AutoMigrationEligibilityResult numberOwnedSharedHomes](self, "numberOwnedSharedHomes"), v13 == objc_msgSend(v6, "numberOwnedSharedHomes")))
  {
    isEligible = [(HMDHH2AutoMigrationEligibilityResult *)self isEligible];
    v15 = isEligible ^ [v6 isEligible] ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (HMDHH2AutoMigrationEligibilityResult)initWithStatus:(unint64_t)status iCloudAccountStatus:(unint64_t)accountStatus unsupportedDevices:(unint64_t)devices hasOnlyEmptyHomes:(BOOL)homes numberOwnedNonEmptyHomes:(unint64_t)emptyHomes numberUnownedSharedHomes:(unint64_t)sharedHomes numberOwnedSharedHomes:(unint64_t)ownedSharedHomes
{
  v16.receiver = self;
  v16.super_class = HMDHH2AutoMigrationEligibilityResult;
  result = [(HMDHH2AutoMigrationEligibilityResult *)&v16 init];
  if (result)
  {
    result->_status = status;
    result->_iCloudAccountStatus = accountStatus;
    result->_unsupportedDevices = devices;
    result->_hasOnlyEmptyHomes = homes;
    result->_numberOwnedNonEmptyHomes = emptyHomes;
    result->_numberUnownedSharedHomes = sharedHomes;
    result->_numberOwnedSharedHomes = ownedSharedHomes;
    result->_eligible = status == 0;
  }

  return result;
}

@end