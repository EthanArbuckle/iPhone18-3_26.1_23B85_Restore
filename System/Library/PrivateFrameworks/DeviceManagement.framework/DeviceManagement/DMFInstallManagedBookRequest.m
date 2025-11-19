@interface DMFInstallManagedBookRequest
- (DMFInstallManagedBookRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFInstallManagedBookRequest

- (DMFInstallManagedBookRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = DMFInstallManagedBookRequest;
  v5 = [(CATTaskRequest *)&v29 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"originator"];
    originator = v5->_originator;
    v5->_originator = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"iTunesStoreID"];
    iTunesStoreID = v5->_iTunesStoreID;
    v5->_iTunesStoreID = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"author"];
    author = v5->_author;
    v5->_author = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"title"];
    title = v5->_title;
    v5->_title = v19;

    v21 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"version"];
    version = v5->_version;
    v5->_version = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v27 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = DMFInstallManagedBookRequest;
  v4 = a3;
  [(CATTaskRequest *)&v13 encodeWithCoder:v4];
  v5 = [(DMFInstallManagedBookRequest *)self originator:v13.receiver];
  [v4 encodeObject:v5 forKey:@"originator"];

  v6 = [(DMFInstallManagedBookRequest *)self iTunesStoreID];
  [v4 encodeObject:v6 forKey:@"iTunesStoreID"];

  v7 = [(DMFInstallManagedBookRequest *)self persistentID];
  [v4 encodeObject:v7 forKey:@"persistentID"];

  v8 = [(DMFInstallManagedBookRequest *)self author];
  [v4 encodeObject:v8 forKey:@"author"];

  v9 = [(DMFInstallManagedBookRequest *)self title];
  [v4 encodeObject:v9 forKey:@"title"];

  v10 = [(DMFInstallManagedBookRequest *)self version];
  [v4 encodeObject:v10 forKey:@"version"];

  v11 = [(DMFInstallManagedBookRequest *)self URL];
  [v4 encodeObject:v11 forKey:@"URL"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFInstallManagedBookRequest type](self, "type")}];
  [v4 encodeObject:v12 forKey:@"type"];
}

@end