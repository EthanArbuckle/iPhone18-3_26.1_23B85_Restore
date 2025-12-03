@interface PKNFCTag
- (PKNFCTag)initWithNFTag:(id)tag;
@end

@implementation PKNFCTag

- (PKNFCTag)initWithNFTag:(id)tag
{
  tagCopy = tag;
  v19.receiver = self;
  v19.super_class = PKNFCTag;
  v6 = [(PKNFCTag *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingTag, tag);
    v7->_technology = [tagCopy technology] & 0xF;
    tagID = [tagCopy tagID];
    tagIdentifier = v7->_tagIdentifier;
    v7->_tagIdentifier = tagID;

    v10 = [tagCopy IDm];
    manufacturerIdentifier = v7->_manufacturerIdentifier;
    v7->_manufacturerIdentifier = v10;

    v12 = [tagCopy PMm];
    manufacturerParameter = v7->_manufacturerParameter;
    v7->_manufacturerParameter = v12;

    systemCode = [tagCopy SystemCode];
    systemCode = v7->_systemCode;
    v7->_systemCode = systemCode;

    v16 = [tagCopy UID];
    UID = v7->_UID;
    v7->_UID = v16;
  }

  return v7;
}

@end