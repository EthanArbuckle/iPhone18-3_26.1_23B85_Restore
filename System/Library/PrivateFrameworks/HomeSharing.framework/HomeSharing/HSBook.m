@interface HSBook
- (HSBook)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HSBook

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HSBook *)self title];
  v6 = [v3 stringWithFormat:@"<%@: %p title='%@'>", v4, self, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[HSBook purchaseHistoryID](self forKey:{"purchaseHistoryID"), @"HSPurchasedBookPurchaseHistoryID"}];
  [v4 encodeInt64:-[HSBook storeID](self forKey:{"storeID"), @"HSPurchasedBookStoreID"}];
  v5 = [(HSBook *)self title];
  [v4 encodeObject:v5 forKey:@"HSPurchasedBookTitle"];

  v6 = [(HSBook *)self author];
  [v4 encodeObject:v6 forKey:@"HSPurchasedBookAuthor"];

  v7 = [(HSBook *)self genre];
  [v4 encodeObject:v7 forKey:@"HSPurchasedBookGenre"];

  v8 = [(HSBook *)self datePurchased];
  [v4 encodeObject:v8 forKey:@"HSPurchasedBookDatePurchased"];

  v9 = [(HSBook *)self artworkURL];
  [v4 encodeObject:v9 forKey:@"HSPurchasedBookArtworkURL"];

  v10 = [(HSBook *)self redownloadParameters];
  [v4 encodeObject:v10 forKey:@"HSPurchasedBookRedownloadParameters"];

  [v4 encodeBool:-[HSBook isVPPLicensed](self forKey:{"isVPPLicensed"), @"HSPurchasedBookVPPLicensed"}];
  v11 = [(HSBook *)self vppOrganizationID];
  [v4 encodeObject:v11 forKey:@"HSPurchasedBookVPPOrganizationID"];

  v12 = [(HSBook *)self vppOrganizationDisplayName];
  [v4 encodeObject:v12 forKey:@"HSPurchasedBookVPPOrganizationDisplayName"];
}

- (HSBook)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HSBook;
  v5 = [(HSBook *)&v15 init];
  if (v5)
  {
    -[HSBook setPurchaseHistoryID:](v5, "setPurchaseHistoryID:", [v4 decodeInt64ForKey:@"HSPurchasedBookPurchaseHistoryID"]);
    -[HSBook setStoreID:](v5, "setStoreID:", [v4 decodeInt64ForKey:@"HSPurchasedBookStoreID"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookTitle"];
    [(HSBook *)v5 setTitle:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookAuthor"];
    [(HSBook *)v5 setAuthor:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookGenre"];
    [(HSBook *)v5 setGenre:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookDatePurchased"];
    [(HSBook *)v5 setDatePurchased:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookArtworkURL"];
    [(HSBook *)v5 setArtworkURL:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookRedownloadParameters"];
    [(HSBook *)v5 setRedownloadParameters:v11];

    -[HSBook setVppLicensed:](v5, "setVppLicensed:", [v4 decodeBoolForKey:@"HSPurchasedBookVPPLicensed"]);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookVPPOrganizationID"];
    [(HSBook *)v5 setVppOrganizationID:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HSPurchasedBookVPPOrganizationDisplayName"];
    [(HSBook *)v5 setVppOrganizationDisplayName:v13];
  }

  return v5;
}

@end