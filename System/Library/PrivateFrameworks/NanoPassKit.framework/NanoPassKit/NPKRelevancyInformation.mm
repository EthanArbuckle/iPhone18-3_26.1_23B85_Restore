@interface NPKRelevancyInformation
- (NPKRelevancyInformation)initWithCoder:(id)coder;
- (NPKRelevancyInformation)initWithPassUniqueID:(id)d groupID:(id)iD relevantText:(id)text shouldSuppressLiveActivity:(BOOL)activity;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKRelevancyInformation

- (NPKRelevancyInformation)initWithPassUniqueID:(id)d groupID:(id)iD relevantText:(id)text shouldSuppressLiveActivity:(BOOL)activity
{
  dCopy = d;
  iDCopy = iD;
  textCopy = text;
  v17.receiver = self;
  v17.super_class = NPKRelevancyInformation;
  v14 = [(NPKRelevancyInformation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_passUniqueID, d);
    objc_storeStrong(&v15->_groupID, iD);
    objc_storeStrong(&v15->_relevantText, text);
    v15->_shouldSuppressLiveActivity = activity;
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

- (NPKRelevancyInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NPKRelevancyInformation;
  v5 = [(NPKRelevancyInformation *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevantText"];
    relevantText = v5->_relevantText;
    v5->_relevantText = v10;

    v5->_shouldSuppressLiveActivity = [coderCopy decodeBoolForKey:@"shouldSuppressLiveActivity"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  passUniqueID = self->_passUniqueID;
  coderCopy = coder;
  [coderCopy encodeObject:passUniqueID forKey:@"passUniqueID"];
  [coderCopy encodeObject:self->_groupID forKey:@"groupID"];
  [coderCopy encodeObject:self->_relevantText forKey:@"relevantText"];
  [coderCopy encodeBool:self->_shouldSuppressLiveActivity forKey:@"shouldSuppressLiveActivity"];
}

@end