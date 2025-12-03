@interface FCANFDocumentManifest
- (FCANFDocumentManifest)initWithCoder:(id)coder;
- (FCANFDocumentManifest)initWithNonImageResourceIDs:(id)ds optimalImageResourceIDs:(id)iDs smallestImageResourceIDs:(id)resourceIDs;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCANFDocumentManifest

- (FCANFDocumentManifest)initWithNonImageResourceIDs:(id)ds optimalImageResourceIDs:(id)iDs smallestImageResourceIDs:(id)resourceIDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  resourceIDsCopy = resourceIDs;
  v19.receiver = self;
  v19.super_class = FCANFDocumentManifest;
  v11 = [(FCANFDocumentManifest *)&v19 init];
  if (v11)
  {
    v12 = [dsCopy copy];
    nonImageResourceIDs = v11->_nonImageResourceIDs;
    v11->_nonImageResourceIDs = v12;

    v14 = [iDsCopy copy];
    optimalImageResourceIDs = v11->_optimalImageResourceIDs;
    v11->_optimalImageResourceIDs = v14;

    v16 = [resourceIDsCopy copy];
    smallestImageResourceIDs = v11->_smallestImageResourceIDs;
    v11->_smallestImageResourceIDs = v16;
  }

  return v11;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = MEMORY[0x1E696AD98];
  nonImageResourceIDs = [(FCANFDocumentManifest *)self nonImageResourceIDs];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(nonImageResourceIDs, "count")}];
  [(FCDescription *)v3 addField:@"nonImageResourceIDs" object:v6];

  v7 = MEMORY[0x1E696AD98];
  optimalImageResourceIDs = [(FCANFDocumentManifest *)self optimalImageResourceIDs];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(optimalImageResourceIDs, "count")}];
  [(FCDescription *)v3 addField:@"optimalImageResourceIDs" object:v9];

  v10 = MEMORY[0x1E696AD98];
  smallestImageResourceIDs = [(FCANFDocumentManifest *)self smallestImageResourceIDs];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(smallestImageResourceIDs, "count")}];
  [(FCDescription *)v3 addField:@"smallestImageResourceIDs" object:v12];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

- (FCANFDocumentManifest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"nonImageResourceIDs"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"optimalImageResourceIDs"];
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"smallestImageResourceIDs"];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nonImageResourceIDs = [(FCANFDocumentManifest *)self nonImageResourceIDs];
  [coderCopy encodeObject:nonImageResourceIDs forKey:@"nonImageResourceIDs"];

  optimalImageResourceIDs = [(FCANFDocumentManifest *)self optimalImageResourceIDs];
  [coderCopy encodeObject:optimalImageResourceIDs forKey:@"optimalImageResourceIDs"];

  smallestImageResourceIDs = [(FCANFDocumentManifest *)self smallestImageResourceIDs];
  [coderCopy encodeObject:smallestImageResourceIDs forKey:@"smallestImageResourceIDs"];
}

@end