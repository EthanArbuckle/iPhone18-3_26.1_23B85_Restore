@interface ICDCollaborationVersion
- (ICDCollaborationVersion)initWithCoder:(id)a3;
- (ICDCollaborationVersion)initWithCollaborationSignature:(id)a3;
@end

@implementation ICDCollaborationVersion

- (ICDCollaborationVersion)initWithCollaborationSignature:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICDCollaborationVersion;
  v5 = [(ICDCollaborationVersion *)&v9 init];
  if (v5)
  {
    v6 = [v4 br_md5];
    collaborationSignature = v5->_collaborationSignature;
    v5->_collaborationSignature = v6;
  }

  return v5;
}

- (ICDCollaborationVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICDCollaborationVersion;
  v5 = [(ICDCollaborationVersion *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    collaborationSignature = v5->_collaborationSignature;
    v5->_collaborationSignature = v6;
  }

  return v5;
}

@end