@interface NPKRelevancyInformation
- (NPKRelevancyInformation)initWithCoder:(id)a3;
- (NPKRelevancyInformation)initWithPassUniqueID:(id)a3 groupID:(id)a4 relevantText:(id)a5 shouldSuppressLiveActivity:(BOOL)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKRelevancyInformation

- (NPKRelevancyInformation)initWithPassUniqueID:(id)a3 groupID:(id)a4 relevantText:(id)a5 shouldSuppressLiveActivity:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = NPKRelevancyInformation;
  v14 = [(NPKRelevancyInformation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_passUniqueID, a3);
    objc_storeStrong(&v15->_groupID, a4);
    objc_storeStrong(&v15->_relevantText, a5);
    v15->_shouldSuppressLiveActivity = a6;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v9 = *&self->_passUniqueID;
  relevantText = self->_relevantText;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldSuppressLiveActivity];
  v7 = [v3 stringWithFormat:@"<%@: %p\n\tpassUniqueID: %@\n\tgroupID: %@\n\trelevantText: %@\n\tshouldSuppressLiveActivity: %@\n>", v4, self, v9, relevantText, v6];

  return v7;
}

- (NPKRelevancyInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NPKRelevancyInformation;
  v5 = [(NPKRelevancyInformation *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relevantText"];
    relevantText = v5->_relevantText;
    v5->_relevantText = v10;

    v5->_shouldSuppressLiveActivity = [v4 decodeBoolForKey:@"shouldSuppressLiveActivity"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  passUniqueID = self->_passUniqueID;
  v5 = a3;
  [v5 encodeObject:passUniqueID forKey:@"passUniqueID"];
  [v5 encodeObject:self->_groupID forKey:@"groupID"];
  [v5 encodeObject:self->_relevantText forKey:@"relevantText"];
  [v5 encodeBool:self->_shouldSuppressLiveActivity forKey:@"shouldSuppressLiveActivity"];
}

@end