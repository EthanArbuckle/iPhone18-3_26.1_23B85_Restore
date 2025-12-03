@interface LNViewAction
- (LNViewAction)initWithActionIdentifier:(id)identifier viewIdentifier:(int64_t)viewIdentifier location:(LNViewLocation *)location;
- (LNViewAction)initWithCoder:(id)coder;
- (LNViewLocation)location;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNViewAction

- (LNViewLocation)location
{
  v3 = *&self->depth;
  *&retstr->x = *&self->width;
  *&retstr->z = v3;
  *&retstr->height = *&self[1].y;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionIdentifier = [(LNViewAction *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  [coderCopy encodeInteger:-[LNViewAction viewIdentifier](self forKey:{"viewIdentifier"), @"viewIdentifier"}];
  [coderCopy encodeBytes:&self->_location length:48 forKey:@"location"];
}

- (LNViewAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"viewIdentifier"];
  if (v5)
  {
    v7 = v6;
    v14 = 0;
    v8 = [coderCopy decodeBytesForKey:@"location" returnedLength:&v14];
    selfCopy = 0;
    if (v8 && v14 == 48)
    {
      v10 = *v8;
      v11 = v8[2];
      v13[1] = v8[1];
      v13[2] = v11;
      v13[0] = v10;
      self = [(LNViewAction *)self initWithActionIdentifier:v5 viewIdentifier:v7 location:v13];
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  actionIdentifier = [(LNViewAction *)self actionIdentifier];
  viewIdentifier = [(LNViewAction *)self viewIdentifier];
  v6 = LNViewLocationAsString(&self->_location);
  v7 = [v3 stringWithFormat:@"%@(%ld) @ %@", actionIdentifier, viewIdentifier, v6];

  return v7;
}

- (LNViewAction)initWithActionIdentifier:(id)identifier viewIdentifier:(int64_t)viewIdentifier location:(LNViewLocation *)location
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (viewIdentifier)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNViewAction.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (viewIdentifier)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNViewAction.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"viewIdentifier"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNViewAction;
  v11 = [(LNViewAction *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actionIdentifier, identifier);
    v12->_viewIdentifier = viewIdentifier;
    v13 = *&location->x;
    v14 = *&location->z;
    *&v12->_location.height = *&location->height;
    *&v12->_location.z = v14;
    *&v12->_location.x = v13;
    v15 = v12;
  }

  return v12;
}

@end