@interface _BRContainerItem
- (BOOL)respondsToSelector:(SEL)selector;
- (_BRContainerItem)initWithCoder:(id)coder;
- (_BRContainerItem)initWithQueryItem:(id)item container:(id)container zoneRowID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)itemIdentifier;
- (id)subclassDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BRContainerItem

- (_BRContainerItem)initWithQueryItem:(id)item container:(id)container zoneRowID:(id)d
{
  itemCopy = item;
  containerCopy = container;
  if (itemCopy)
  {
    v22.receiver = self;
    v22.super_class = _BRContainerItem;
    v9 = [(BRQueryItem *)&v22 initWithQueryItem:itemCopy];
    if (v9)
    {
      bundleIdentifiers = [containerCopy bundleIdentifiers];
      containerClientIDs = v9->_containerClientIDs;
      v9->_containerClientIDs = bundleIdentifiers;

      identifier = [containerCopy identifier];
      containerID = v9->_containerID;
      v9->_containerID = identifier;

      localizedName = [containerCopy localizedName];
      displayName = v9->_displayName;
      v9->_displayName = localizedName;

      filename = [itemCopy filename];
      localizedName = v9->_localizedName;
      v9->_localizedName = filename;

      if ([containerCopy isInInitialState])
      {
        LOBYTE(v18) = 1;
      }

      else
      {
        v18 = [containerCopy isDocumentScopePublic] ^ 1;
      }

      v9->_isPristine = v18;
      if ([containerCopy isDocumentScopePublic])
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _BRContainerItem;
  coderCopy = coder;
  [(BRQueryItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_containerID forKey:{@"cContainerID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_containerClientIDs forKey:@"cContainerClientIDs"];
  [coderCopy encodeObject:self->_localizedName forKey:@"cLocalizedName"];
  [coderCopy encodeBool:self->_isPristine forKey:@"cPristine"];
  [coderCopy encodeObject:self->_displayName forKey:@"cDisplayName"];
}

- (_BRContainerItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = _BRContainerItem;
  v5 = [(BRQueryItem *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cContainerID"];
    containerID = v5->_containerID;
    v5->_containerID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"cContainerClientIDs"];
    containerClientIDs = v5->_containerClientIDs;
    v5->_containerClientIDs = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cLocalizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v13;

    v5->_isPristine = [coderCopy decodeBoolForKey:@"cPristine"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cDisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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
  itemIdentifier = [(BRQueryItem *)&v4 itemIdentifier];

  return itemIdentifier;
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

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_contentModificationDate == selector || sel_creationDate == selector)
  {
    return 0;
  }

  v7 = objc_opt_class();

  return [v7 instancesRespondToSelector:selector];
}

@end