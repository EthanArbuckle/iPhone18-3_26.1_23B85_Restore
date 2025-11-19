@interface DMFRemoveManagedBookRequest
- (DMFRemoveManagedBookRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFRemoveManagedBookRequest

- (DMFRemoveManagedBookRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DMFRemoveManagedBookRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"iTunesStoreID"];
    iTunesStoreID = v5->_iTunesStoreID;
    v5->_iTunesStoreID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFRemoveManagedBookRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(DMFRemoveManagedBookRequest *)self persistentID:v7.receiver];
  [v4 encodeObject:v5 forKey:@"persistentID"];

  v6 = [(DMFRemoveManagedBookRequest *)self iTunesStoreID];
  [v4 encodeObject:v6 forKey:@"iTunesStoreID"];
}

@end