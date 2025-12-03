@interface HSBook
- (HSBook)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HSBook

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  title = [(HSBook *)self title];
  v6 = [v3 stringWithFormat:@"<%@: %p title='%@'>", v4, self, title];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[HSBook purchaseHistoryID](self forKey:{"purchaseHistoryID"), @"HSPurchasedBookPurchaseHistoryID"}];
  [coderCopy encodeInt64:-[HSBook storeID](self forKey:{"storeID"), @"HSPurchasedBookStoreID"}];
  title = [(HSBook *)self title];
  [coderCopy encodeObject:title forKey:@"HSPurchasedBookTitle"];

  author = [(HSBook *)self author];
  [coderCopy encodeObject:author forKey:@"HSPurchasedBookAuthor"];

  genre = [(HSBook *)self genre];
  [coderCopy encodeObject:genre forKey:@"HSPurchasedBookGenre"];

  datePurchased = [(HSBook *)self datePurchased];
  [coderCopy encodeObject:datePurchased forKey:@"HSPurchasedBookDatePurchased"];

  artworkURL = [(HSBook *)self artworkURL];
  [coderCopy encodeObject:artworkURL forKey:@"HSPurchasedBookArtworkURL"];

  redownloadParameters = [(HSBook *)self redownloadParameters];
  [coderCopy encodeObject:redownloadParameters forKey:@"HSPurchasedBookRedownloadParameters"];

  [coderCopy encodeBool:-[HSBook isVPPLicensed](self forKey:{"isVPPLicensed"), @"HSPurchasedBookVPPLicensed"}];
  vppOrganizationID = [(HSBook *)self vppOrganizationID];
  [coderCopy encodeObject:vppOrganizationID forKey:@"HSPurchasedBookVPPOrganizationID"];

  vppOrganizationDisplayName = [(HSBook *)self vppOrganizationDisplayName];
  [coderCopy encodeObject:vppOrganizationDisplayName forKey:@"HSPurchasedBookVPPOrganizationDisplayName"];
}

- (HSBook)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HSBook;
  v5 = [(HSBook *)&v15 init];
  if (v5)
  {
    -[HSBook setPurchaseHistoryID:](v5, "setPurchaseHistoryID:", [coderCopy decodeInt64ForKey:@"HSPurchasedBookPurchaseHistoryID"]);
    -[HSBook setStoreID:](v5, "setStoreID:", [coderCopy decodeInt64ForKey:@"HSPurchasedBookStoreID"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookTitle"];
    [(HSBook *)v5 setTitle:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookAuthor"];
    [(HSBook *)v5 setAuthor:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookGenre"];
    [(HSBook *)v5 setGenre:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookDatePurchased"];
    [(HSBook *)v5 setDatePurchased:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookArtworkURL"];
    [(HSBook *)v5 setArtworkURL:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookRedownloadParameters"];
    [(HSBook *)v5 setRedownloadParameters:v11];

    -[HSBook setVppLicensed:](v5, "setVppLicensed:", [coderCopy decodeBoolForKey:@"HSPurchasedBookVPPLicensed"]);
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookVPPOrganizationID"];
    [(HSBook *)v5 setVppOrganizationID:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookVPPOrganizationDisplayName"];
    [(HSBook *)v5 setVppOrganizationDisplayName:v13];
  }

  return v5;
}

@end