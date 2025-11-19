@interface _BRContainerItem
- (BOOL)respondsToSelector:(SEL)a3;
- (_BRContainerItem)initWithCoder:(id)a3;
- (_BRContainerItem)initWithQueryItem:(id)a3 container:(id)a4 zoneRowID:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)itemIdentifier;
- (id)subclassDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BRContainerItem

- (_BRContainerItem)initWithQueryItem:(id)a3 container:(id)a4 zoneRowID:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v22.receiver = self;
    v22.super_class = _BRContainerItem;
    v9 = [(BRQueryItem *)&v22 initWithQueryItem:v7];
    if (v9)
    {
      v10 = [v8 bundleIdentifiers];
      containerClientIDs = v9->_containerClientIDs;
      v9->_containerClientIDs = v10;

      v12 = [v8 identifier];
      containerID = v9->_containerID;
      v9->_containerID = v12;

      v14 = [v8 localizedName];
      displayName = v9->_displayName;
      v9->_displayName = v14;

      v16 = [v7 filename];
      localizedName = v9->_localizedName;
      v9->_localizedName = v16;

      if ([v8 isInInitialState])
      {
        LOBYTE(v18) = 1;
      }

      else
      {
        v18 = [v8 isDocumentScopePublic] ^ 1;
      }

      v9->_isPristine = v18;
      if ([v8 isDocumentScopePublic])
      {
        v20 = 0;
      }

      else
      {
        v20 = 0x4000000;
      }

      *&v9->super._flags.var0 = *&v9->super._flags.var0 & 0xFBFFFFFF | v20;
    }

    self = v9;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _BRContainerItem;
  v4 = a3;
  [(BRQueryItem *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_containerID forKey:{@"cContainerID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_containerClientIDs forKey:@"cContainerClientIDs"];
  [v4 encodeObject:self->_localizedName forKey:@"cLocalizedName"];
  [v4 encodeBool:self->_isPristine forKey:@"cPristine"];
  [v4 encodeObject:self->_displayName forKey:@"cDisplayName"];
}

- (_BRContainerItem)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _BRContainerItem;
  v5 = [(BRQueryItem *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cContainerID"];
    containerID = v5->_containerID;
    v5->_containerID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"cContainerClientIDs"];
    containerClientIDs = v5->_containerClientIDs;
    v5->_containerClientIDs = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cLocalizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v13;

    v5->_isPristine = [v4 decodeBoolForKey:@"cPristine"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cDisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithQueryItem:self];
  objc_storeStrong((v4 + 280), self->_containerID);
  objc_storeStrong((v4 + 288), self->_containerClientIDs);
  objc_storeStrong((v4 + 296), self->_localizedName);
  *(v4 + 304) = self->_isPristine;
  objc_storeStrong((v4 + 312), self->_displayName);
  return v4;
}

- (id)itemIdentifier
{
  v4.receiver = self;
  v4.super_class = _BRContainerItem;
  v2 = [(BRQueryItem *)&v4 itemIdentifier];

  return v2;
}

- (id)subclassDescription
{
  if (self->_isPristine)
  {
    return @" pristine";
  }

  else
  {
    return 0;
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_contentModificationDate == a3 || sel_creationDate == a3)
  {
    return 0;
  }

  v7 = objc_opt_class();

  return [v7 instancesRespondToSelector:a3];
}

@end