@interface PKNFCTag
- (PKNFCTag)initWithNFTag:(id)a3;
@end

@implementation PKNFCTag

- (PKNFCTag)initWithNFTag:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PKNFCTag;
  v6 = [(PKNFCTag *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingTag, a3);
    v7->_technology = [v5 technology] & 0xF;
    v8 = [v5 tagID];
    tagIdentifier = v7->_tagIdentifier;
    v7->_tagIdentifier = v8;

    v10 = [v5 IDm];
    manufacturerIdentifier = v7->_manufacturerIdentifier;
    v7->_manufacturerIdentifier = v10;

    v12 = [v5 PMm];
    manufacturerParameter = v7->_manufacturerParameter;
    v7->_manufacturerParameter = v12;

    v14 = [v5 SystemCode];
    systemCode = v7->_systemCode;
    v7->_systemCode = v14;

    v16 = [v5 UID];
    UID = v7->_UID;
    v7->_UID = v16;
  }

  return v7;
}

@end