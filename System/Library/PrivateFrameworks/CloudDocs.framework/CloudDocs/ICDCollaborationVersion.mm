@interface ICDCollaborationVersion
- (ICDCollaborationVersion)initWithCoder:(id)coder;
- (ICDCollaborationVersion)initWithCollaborationSignature:(id)signature;
@end

@implementation ICDCollaborationVersion

- (ICDCollaborationVersion)initWithCollaborationSignature:(id)signature
{
  signatureCopy = signature;
  v9.receiver = self;
  v9.super_class = ICDCollaborationVersion;
  v5 = [(ICDCollaborationVersion *)&v9 init];
  if (v5)
  {
    br_md5 = [signatureCopy br_md5];
    collaborationSignature = v5->_collaborationSignature;
    v5->_collaborationSignature = br_md5;
  }

  return v5;
}

- (ICDCollaborationVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICDCollaborationVersion;
  v5 = [(ICDCollaborationVersion *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    collaborationSignature = v5->_collaborationSignature;
    v5->_collaborationSignature = v6;
  }

  return v5;
}

@end