@interface DSXPCSharedResource
- (DSXPCSharedResource)initWithCoder:(id)a3;
- (DSXPCSharedResource)initWithResource:(id)a3;
- (id)initPrivateResourceWithName:(id)a3 detail:(id)a4 participants:(id)a5;
- (int64_t)visibility;
- (unint64_t)participationAccess;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DSXPCSharedResource

- (DSXPCSharedResource)initWithResource:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DSXPCSharedResource;
  v5 = [(DSXPCSharedResource *)&v13 init];
  if (v5)
  {
    v6 = [v4 displayName];
    [(DSXPCSharedResource *)v5 setName:v6];

    v7 = [v4 displayDetail];
    [(DSXPCSharedResource *)v5 setDetail:v7];

    v8 = [v4 participants];
    v9 = [DSXPCParticipant participants:v8];
    [(DSXPCSharedResource *)v5 setParticipantArray:v9];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "visibility")}];
    [(DSXPCSharedResource *)v5 setResourceVisibility:v10];

    if (objc_opt_respondsToSelector())
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "participationAccess")}];
      [(DSXPCSharedResource *)v5 setAccess:v11];
    }
  }

  return v5;
}

- (id)initPrivateResourceWithName:(id)a3 detail:(id)a4 participants:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = DSXPCSharedResource;
  v11 = [(DSXPCSharedResource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(DSXPCSharedResource *)v11 setName:v8];
    [(DSXPCSharedResource *)v12 setDetail:v9];
    [(DSXPCSharedResource *)v12 setParticipantArray:v10];
    [(DSXPCSharedResource *)v12 setResourceVisibility:&unk_285BA2CA0];
  }

  return v12;
}

- (int64_t)visibility
{
  v2 = [(DSXPCSharedResource *)self resourceVisibility];
  v3 = [v2 intValue];

  return v3;
}

- (unint64_t)participationAccess
{
  v2 = [(DSXPCSharedResource *)self access];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (DSXPCSharedResource)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DSXPCSharedResource;
  v5 = [(DSXPCSharedResource *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detail"];
    detail = v5->_detail;
    v5->_detail = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"participantArray"];
    participantArray = v5->_participantArray;
    v5->_participantArray = v13;

    v15 = [MEMORY[0x277CCABB0] copy];
    v5->_resourceVisibility = [v4 decodeObjectOfClass:v15 forKey:@"resourceVisibility"];

    v16 = [MEMORY[0x277CCABB0] copy];
    v5->_access = [v4 decodeObjectOfClass:v16 forKey:@"access"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_detail forKey:@"detail"];
  [v5 encodeObject:self->_participantArray forKey:@"participantArray"];
  [v5 encodeObject:self->_resourceVisibility forKey:@"resourceVisibility"];
  [v5 encodeObject:self->_access forKey:@"access"];
}

@end