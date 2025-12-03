@interface DMFInstallManagedBookRequest
- (DMFInstallManagedBookRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFInstallManagedBookRequest

- (DMFInstallManagedBookRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = DMFInstallManagedBookRequest;
  v5 = [(CATTaskRequest *)&v29 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"originator"];
    originator = v5->_originator;
    v5->_originator = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"iTunesStoreID"];
    iTunesStoreID = v5->_iTunesStoreID;
    v5->_iTunesStoreID = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"author"];
    author = v5->_author;
    v5->_author = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"title"];
    title = v5->_title;
    v5->_title = v19;

    v21 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"version"];
    version = v5->_version;
    v5->_version = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v27 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = DMFInstallManagedBookRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v13 encodeWithCoder:coderCopy];
  v5 = [(DMFInstallManagedBookRequest *)self originator:v13.receiver];
  [coderCopy encodeObject:v5 forKey:@"originator"];

  iTunesStoreID = [(DMFInstallManagedBookRequest *)self iTunesStoreID];
  [coderCopy encodeObject:iTunesStoreID forKey:@"iTunesStoreID"];

  persistentID = [(DMFInstallManagedBookRequest *)self persistentID];
  [coderCopy encodeObject:persistentID forKey:@"persistentID"];

  author = [(DMFInstallManagedBookRequest *)self author];
  [coderCopy encodeObject:author forKey:@"author"];

  title = [(DMFInstallManagedBookRequest *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  version = [(DMFInstallManagedBookRequest *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  v11 = [(DMFInstallManagedBookRequest *)self URL];
  [coderCopy encodeObject:v11 forKey:@"URL"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFInstallManagedBookRequest type](self, "type")}];
  [coderCopy encodeObject:v12 forKey:@"type"];
}

@end