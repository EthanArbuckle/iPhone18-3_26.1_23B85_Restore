@interface FCANFDocumentManifest
- (FCANFDocumentManifest)initWithCoder:(id)a3;
- (FCANFDocumentManifest)initWithNonImageResourceIDs:(id)a3 optimalImageResourceIDs:(id)a4 smallestImageResourceIDs:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCANFDocumentManifest

- (FCANFDocumentManifest)initWithNonImageResourceIDs:(id)a3 optimalImageResourceIDs:(id)a4 smallestImageResourceIDs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = FCANFDocumentManifest;
  v11 = [(FCANFDocumentManifest *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    nonImageResourceIDs = v11->_nonImageResourceIDs;
    v11->_nonImageResourceIDs = v12;

    v14 = [v9 copy];
    optimalImageResourceIDs = v11->_optimalImageResourceIDs;
    v11->_optimalImageResourceIDs = v14;

    v16 = [v10 copy];
    smallestImageResourceIDs = v11->_smallestImageResourceIDs;
    v11->_smallestImageResourceIDs = v16;
  }

  return v11;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(FCANFDocumentManifest *)self nonImageResourceIDs];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  [(FCDescription *)v3 addField:@"nonImageResourceIDs" object:v6];

  v7 = MEMORY[0x1E696AD98];
  v8 = [(FCANFDocumentManifest *)self optimalImageResourceIDs];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  [(FCDescription *)v3 addField:@"optimalImageResourceIDs" object:v9];

  v10 = MEMORY[0x1E696AD98];
  v11 = [(FCANFDocumentManifest *)self smallestImageResourceIDs];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  [(FCDescription *)v3 addField:@"smallestImageResourceIDs" object:v12];

  v13 = [(FCDescription *)v3 descriptionString];

  return v13;
}

- (FCANFDocumentManifest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"nonImageResourceIDs"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"optimalImageResourceIDs"];
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"smallestImageResourceIDs"];

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [(FCANFDocumentManifest *)self initWithNonImageResourceIDs:v8 optimalImageResourceIDs:v9 smallestImageResourceIDs:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCANFDocumentManifest *)self nonImageResourceIDs];
  [v4 encodeObject:v5 forKey:@"nonImageResourceIDs"];

  v6 = [(FCANFDocumentManifest *)self optimalImageResourceIDs];
  [v4 encodeObject:v6 forKey:@"optimalImageResourceIDs"];

  v7 = [(FCANFDocumentManifest *)self smallestImageResourceIDs];
  [v4 encodeObject:v7 forKey:@"smallestImageResourceIDs"];
}

@end