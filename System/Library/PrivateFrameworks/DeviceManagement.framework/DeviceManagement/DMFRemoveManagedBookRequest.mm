@interface DMFRemoveManagedBookRequest
- (DMFRemoveManagedBookRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFRemoveManagedBookRequest

- (DMFRemoveManagedBookRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFRemoveManagedBookRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"iTunesStoreID"];
    iTunesStoreID = v5->_iTunesStoreID;
    v5->_iTunesStoreID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFRemoveManagedBookRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFRemoveManagedBookRequest *)self persistentID:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"persistentID"];

  iTunesStoreID = [(DMFRemoveManagedBookRequest *)self iTunesStoreID];
  [coderCopy encodeObject:iTunesStoreID forKey:@"iTunesStoreID"];
}

@end