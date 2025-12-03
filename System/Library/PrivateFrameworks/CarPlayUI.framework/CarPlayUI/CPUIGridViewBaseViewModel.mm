@interface CPUIGridViewBaseViewModel
- (CPUIGridViewBaseViewModel)init;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle artworkCatalog:(id)catalog imageShape:(unint64_t)shape isTallArtwork:(BOOL)artwork placeholder:(id)placeholder accessorySystemImage:(id)self0 allowsTouches:(BOOL)self1 disabledAppearance:(BOOL)self2 isPressed:(BOOL)self3 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle artworkCatalog:(id)catalog imageShape:(unint64_t)shape isTallArtwork:(BOOL)artwork placeholder:(id)placeholder accessorySystemImage:(id)self0 isDisabled:(BOOL)self1 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle image:(id)image imageShape:(unint64_t)shape accessorySystemImage:(id)systemImage allowsTouches:(BOOL)touches disabledAppearance:(BOOL)self0 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle image:(id)image imageShape:(unint64_t)shape accessorySystemImage:(id)systemImage isDisabled:(BOOL)disabled action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle image:(id)image imageShape:(unint64_t)shape backgroundColor:(id)color isTallArtwork:(BOOL)artwork accessorySystemImage:(id)self0 allowsTouches:(BOOL)self1 disabledAppearance:(BOOL)self2 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle image:(id)image imageShape:(unint64_t)shape backgroundColor:(id)color isTallArtwork:(BOOL)artwork accessorySystemImage:(id)self0 allowsTouches:(BOOL)self1 disabledAppearance:(BOOL)self2 canStayPressed:(BOOL)self3 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle image:(id)image imageShape:(unint64_t)shape backgroundColor:(id)color isTallArtwork:(BOOL)artwork accessorySystemImage:(id)self0 isDisabled:(BOOL)self1 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle systemImage:(id)image accessorySystemImage:(id)systemImage allowsTouches:(BOOL)touches disabledAppearance:(BOOL)appearance action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle systemImage:(id)image accessorySystemImage:(id)systemImage isDisabled:(BOOL)disabled action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle titlePriority:(unint64_t)priority artworkCatalog:(id)catalog imageShape:(unint64_t)shape isTallArtwork:(BOOL)artwork placeholder:(id)self0 accessorySystemImage:(id)self1 allowsTouches:(BOOL)self2 disabledAppearance:(BOOL)self3 isPressed:(BOOL)self4 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle titlePriority:(unint64_t)priority artworkCatalog:(id)catalog imageShape:(unint64_t)shape isTallArtwork:(BOOL)artwork placeholder:(id)self0 accessorySystemImage:(id)self1 isDisabled:(BOOL)self2 isPressed:(BOOL)self3 action:(id)aBlock;
- (void)depress;
@end

@implementation CPUIGridViewBaseViewModel

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle image:(id)image imageShape:(unint64_t)shape accessorySystemImage:(id)systemImage allowsTouches:(BOOL)touches disabledAppearance:(BOOL)self0 action:(id)aBlock
{
  v13 = _Block_copy(aBlock);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (!subtitle)
  {
    v20 = 0;
    v22 = 0;
    if (systemImage)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = 0;
    goto LABEL_6;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (!systemImage)
  {
    goto LABEL_5;
  }

LABEL_3:
  systemImage = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
LABEL_6:
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  imageCopy = image;
  v27 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:image:imageShape:accessorySystemImage:allowsTouches:disabledAppearance:action:)(v14, v16, v17, v19, v20, v22, imageCopy, shape, systemImage, v24, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v25);

  return v27;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle systemImage:(id)image accessorySystemImage:(id)systemImage allowsTouches:(BOOL)touches disabledAppearance:(BOOL)appearance action:(id)aBlock
{
  v12 = _Block_copy(aBlock);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v14;
  v29 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (subtitle)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (systemImage)
  {
    systemImage = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  *(swift_allocObject() + 16) = v12;
  v26 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:systemImage:accessorySystemImage:allowsTouches:disabledAppearance:action:)(v29, v28, v15, v17, v18, v20, v21, v23, systemImage, v25, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply);

  return v26;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle artworkCatalog:(id)catalog imageShape:(unint64_t)shape isTallArtwork:(BOOL)artwork placeholder:(id)placeholder accessorySystemImage:(id)self0 allowsTouches:(BOOL)self1 disabledAppearance:(BOOL)self2 isPressed:(BOOL)self3 action:(id)aBlock
{
  imageCopy = image;
  v17 = _Block_copy(aBlock);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v19;
  v36 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v21;
  v34 = v20;
  if (subtitle)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v23;
    v32 = v22;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  if (image)
  {
    imageCopy = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  catalogCopy = catalog;
  placeholderCopy = placeholder;
  v29 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:artworkCatalog:imageShape:isTallArtwork:placeholder:accessorySystemImage:allowsTouches:disabledAppearance:isPressed:action:)(v36, v35, v34, v33, v32, v31, catalog, shape, artwork, placeholder, imageCopy, v25, touches, appearance, pressed, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v26);

  return v29;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle titlePriority:(unint64_t)priority artworkCatalog:(id)catalog imageShape:(unint64_t)shape isTallArtwork:(BOOL)artwork placeholder:(id)self0 accessorySystemImage:(id)self1 allowsTouches:(BOOL)self2 disabledAppearance:(BOOL)self3 isPressed:(BOOL)self4 action:(id)aBlock
{
  imageCopy = image;
  v17 = _Block_copy(aBlock);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v19;
  v36 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v21;
  v34 = v20;
  if (subtitle)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v23;
    v32 = v22;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  if (image)
  {
    imageCopy = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  catalogCopy = catalog;
  placeholderCopy = placeholder;
  v29 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:titlePriority:artworkCatalog:imageShape:isTallArtwork:placeholder:accessorySystemImage:allowsTouches:disabledAppearance:isPressed:action:)(v36, v35, v34, v33, v32, v31, priority, catalog, shape, artwork, placeholder, imageCopy, v25, touches, appearance, pressed, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v26);

  return v29;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle image:(id)image imageShape:(unint64_t)shape backgroundColor:(id)color isTallArtwork:(BOOL)artwork accessorySystemImage:(id)self0 allowsTouches:(BOOL)self1 disabledAppearance:(BOOL)self2 action:(id)aBlock
{
  v33 = _Block_copy(aBlock);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v18;
  v35 = v17;
  if (title)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v20;
    v32 = v19;
    systemImageCopy2 = systemImage;
    if (subtitle)
    {
LABEL_3:
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      subtitle = v23;
      goto LABEL_6;
    }
  }

  else
  {
    v31 = 0;
    v32 = 0;
    systemImageCopy2 = systemImage;
    if (subtitle)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
LABEL_6:
  if (systemImageCopy2)
  {
    systemImageCopy2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  imageCopy = image;
  colorCopy = color;
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  v29 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:image:imageShape:backgroundColor:isTallArtwork:accessorySystemImage:allowsTouches:disabledAppearance:action:)(v35, v34, v32, v31, v22, subtitle, imageCopy, shape, colorCopy, artwork, systemImageCopy2, v25, touches, appearance, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v28);

  return v29;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle titlePriority:(unint64_t)priority artworkCatalog:(id)catalog imageShape:(unint64_t)shape isTallArtwork:(BOOL)artwork placeholder:(id)self0 accessorySystemImage:(id)self1 isDisabled:(BOOL)self2 isPressed:(BOOL)self3 action:(id)aBlock
{
  imageCopy = image;
  v17 = _Block_copy(aBlock);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v19;
  v36 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v21;
  v34 = v20;
  if (subtitle)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v23;
    v32 = v22;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  if (image)
  {
    imageCopy = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = swift_allocObject();
  v26[2] = v17;
  catalogCopy = catalog;
  placeholderCopy = placeholder;
  v29 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:titlePriority:artworkCatalog:imageShape:isTallArtwork:placeholder:accessorySystemImage:isDisabled:isPressed:action:)(v36, v35, v34, v33, v32, v31, priority, catalog, shape, artwork, placeholder, imageCopy, v25, disabled, pressed, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v26);

  return v29;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle image:(id)image imageShape:(unint64_t)shape backgroundColor:(id)color isTallArtwork:(BOOL)artwork accessorySystemImage:(id)self0 allowsTouches:(BOOL)self1 disabledAppearance:(BOOL)self2 canStayPressed:(BOOL)self3 action:(id)aBlock
{
  v34 = _Block_copy(aBlock);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v19;
  v36 = v18;
  if (title)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v21;
    v33 = v20;
    systemImageCopy2 = systemImage;
    if (subtitle)
    {
LABEL_3:
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      subtitle = v23;
      goto LABEL_6;
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
    systemImageCopy2 = systemImage;
    if (subtitle)
    {
      goto LABEL_3;
    }
  }

  v31 = 0;
LABEL_6:
  if (systemImageCopy2)
  {
    systemImageCopy2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  imageCopy = image;
  colorCopy = color;
  v28 = swift_allocObject();
  *(v28 + 16) = v34;
  v29 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:image:imageShape:backgroundColor:isTallArtwork:accessorySystemImage:allowsTouches:disabledAppearance:canStayPressed:action:)(v36, v35, v33, v32, v31, subtitle, imageCopy, shape, colorCopy, artwork, systemImageCopy2, v25, touches, appearance, pressed, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v28);

  return v29;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle image:(id)image imageShape:(unint64_t)shape accessorySystemImage:(id)systemImage isDisabled:(BOOL)disabled action:(id)aBlock
{
  v12 = _Block_copy(aBlock);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (!subtitle)
  {
    v19 = 0;
    v21 = 0;
    if (systemImage)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (!systemImage)
  {
    goto LABEL_5;
  }

LABEL_3:
  systemImage = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
LABEL_6:
  v24 = swift_allocObject();
  *(v24 + 16) = v12;
  imageCopy = image;
  v26 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:image:imageShape:accessorySystemImage:allowsTouches:disabledAppearance:action:)(v13, v15, v16, v18, v19, v21, imageCopy, shape, systemImage, v23, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v24);

  return v26;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle systemImage:(id)image accessorySystemImage:(id)systemImage isDisabled:(BOOL)disabled action:(id)aBlock
{
  v11 = _Block_copy(aBlock);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v13;
  v28 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (subtitle)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (systemImage)
  {
    systemImage = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  *(swift_allocObject() + 16) = v11;
  v25 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:systemImage:accessorySystemImage:allowsTouches:disabledAppearance:action:)(v28, v27, v14, v16, v17, v19, v20, v22, systemImage, v24, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply);

  return v25;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle artworkCatalog:(id)catalog imageShape:(unint64_t)shape isTallArtwork:(BOOL)artwork placeholder:(id)placeholder accessorySystemImage:(id)self0 isDisabled:(BOOL)self1 action:(id)aBlock
{
  imageCopy = image;
  v15 = _Block_copy(aBlock);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v17;
  v33 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v19;
  v31 = v18;
  if (subtitle)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  if (image)
  {
    imageCopy = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v15;
  catalogCopy = catalog;
  placeholderCopy = placeholder;
  v28 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:artworkCatalog:imageShape:isTallArtwork:placeholder:accessorySystemImage:isDisabled:action:)(v33, v32, v31, v30, v20, v22, catalog, shape, artwork, placeholder, imageCopy, v24, disabled, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v25);

  return v28;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)id title:(id)title subtitle:(id)subtitle image:(id)image imageShape:(unint64_t)shape backgroundColor:(id)color isTallArtwork:(BOOL)artwork accessorySystemImage:(id)self0 isDisabled:(BOOL)self1 action:(id)aBlock
{
  v31 = _Block_copy(aBlock);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v17;
  v33 = v16;
  if (title)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    systemImageCopy2 = systemImage;
    if (subtitle)
    {
LABEL_3:
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      subtitle = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v30 = 0;
    v19 = 0;
    systemImageCopy2 = systemImage;
    if (subtitle)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  if (systemImageCopy2)
  {
    systemImageCopy2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  imageCopy = image;
  colorCopy = color;
  v27 = swift_allocObject();
  *(v27 + 16) = v31;
  v28 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:image:imageShape:backgroundColor:isTallArtwork:accessorySystemImage:isDisabled:action:)(v33, v32, v30, v19, v21, subtitle, imageCopy, shape, colorCopy, artwork, systemImageCopy2, v24, disabled, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v27);

  return v28;
}

- (void)depress
{
  selfCopy = self;
  CPUIGridViewBaseViewModel.depress()();
}

- (CPUIGridViewBaseViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end