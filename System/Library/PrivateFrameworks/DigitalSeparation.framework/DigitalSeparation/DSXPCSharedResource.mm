@interface DSXPCSharedResource
- (DSXPCSharedResource)initWithCoder:(id)coder;
- (DSXPCSharedResource)initWithResource:(id)resource;
- (id)initPrivateResourceWithName:(id)name detail:(id)detail participants:(id)participants;
- (int64_t)visibility;
- (unint64_t)participationAccess;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DSXPCSharedResource

- (DSXPCSharedResource)initWithResource:(id)resource
{
  resourceCopy = resource;
  v13.receiver = self;
  v13.super_class = DSXPCSharedResource;
  v5 = [(DSXPCSharedResource *)&v13 init];
  if (v5)
  {
    displayName = [resourceCopy displayName];
    [(DSXPCSharedResource *)v5 setName:displayName];

    displayDetail = [resourceCopy displayDetail];
    [(DSXPCSharedResource *)v5 setDetail:displayDetail];

    participants = [resourceCopy participants];
    v9 = [DSXPCParticipant participants:participants];
    [(DSXPCSharedResource *)v5 setParticipantArray:v9];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(resourceCopy, "visibility")}];
    [(DSXPCSharedResource *)v5 setResourceVisibility:v10];

    if (objc_opt_respondsToSelector())
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resourceCopy, "participationAccess")}];
      [(DSXPCSharedResource *)v5 setAccess:v11];
    }
  }

  return v5;
}

- (id)initPrivateResourceWithName:(id)name detail:(id)detail participants:(id)participants
{
  nameCopy = name;
  detailCopy = detail;
  participantsCopy = participants;
  v14.receiver = self;
  v14.super_class = DSXPCSharedResource;
  v11 = [(DSXPCSharedResource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(DSXPCSharedResource *)v11 setName:nameCopy];
    [(DSXPCSharedResource *)v12 setDetail:detailCopy];
    [(DSXPCSharedResource *)v12 setParticipantArray:participantsCopy];
    [(DSXPCSharedResource *)v12 setResourceVisibility:&unk_285BA2CA0];
  }

  return v12;
}

- (int64_t)visibility
{
  resourceVisibility = [(DSXPCSharedResource *)self resourceVisibility];
  intValue = [resourceVisibility intValue];

  return intValue;
}

- (unint64_t)participationAccess
{
  access = [(DSXPCSharedResource *)self access];
  unsignedIntValue = [access unsignedIntValue];

  return unsignedIntValue;
}

- (DSXPCSharedResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = DSXPCSharedResource;
  v5 = [(DSXPCSharedResource *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detail"];
    detail = v5->_detail;
    v5->_detail = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"participantArray"];
    participantArray = v5->_participantArray;
    v5->_participantArray = v13;

    v15 = [MEMORY[0x277CCABB0] copy];
    v5->_resourceVisibility = [coderCopy decodeObjectOfClass:v15 forKey:@"resourceVisibility"];

    v16 = [MEMORY[0x277CCABB0] copy];
    v5->_access = [coderCopy decodeObjectOfClass:v16 forKey:@"access"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_detail forKey:@"detail"];
  [coderCopy encodeObject:self->_participantArray forKey:@"participantArray"];
  [coderCopy encodeObject:self->_resourceVisibility forKey:@"resourceVisibility"];
  [coderCopy encodeObject:self->_access forKey:@"access"];
}

@end