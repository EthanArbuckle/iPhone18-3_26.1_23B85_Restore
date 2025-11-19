@interface CPUIGridViewBaseViewModel
- (CPUIGridViewBaseViewModel)init;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 artworkCatalog:(id)a6 imageShape:(unint64_t)a7 isTallArtwork:(BOOL)a8 placeholder:(id)a9 accessorySystemImage:(id)a10 allowsTouches:(BOOL)a11 disabledAppearance:(BOOL)a12 isPressed:(BOOL)a13 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 artworkCatalog:(id)a6 imageShape:(unint64_t)a7 isTallArtwork:(BOOL)a8 placeholder:(id)a9 accessorySystemImage:(id)a10 isDisabled:(BOOL)a11 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 imageShape:(unint64_t)a7 accessorySystemImage:(id)a8 allowsTouches:(BOOL)a9 disabledAppearance:(BOOL)a10 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 imageShape:(unint64_t)a7 accessorySystemImage:(id)a8 isDisabled:(BOOL)a9 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 imageShape:(unint64_t)a7 backgroundColor:(id)a8 isTallArtwork:(BOOL)a9 accessorySystemImage:(id)a10 allowsTouches:(BOOL)a11 disabledAppearance:(BOOL)a12 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 imageShape:(unint64_t)a7 backgroundColor:(id)a8 isTallArtwork:(BOOL)a9 accessorySystemImage:(id)a10 allowsTouches:(BOOL)a11 disabledAppearance:(BOOL)a12 canStayPressed:(BOOL)a13 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 imageShape:(unint64_t)a7 backgroundColor:(id)a8 isTallArtwork:(BOOL)a9 accessorySystemImage:(id)a10 isDisabled:(BOOL)a11 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 systemImage:(id)a6 accessorySystemImage:(id)a7 allowsTouches:(BOOL)a8 disabledAppearance:(BOOL)a9 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 systemImage:(id)a6 accessorySystemImage:(id)a7 isDisabled:(BOOL)a8 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 titlePriority:(unint64_t)a6 artworkCatalog:(id)a7 imageShape:(unint64_t)a8 isTallArtwork:(BOOL)a9 placeholder:(id)a10 accessorySystemImage:(id)a11 allowsTouches:(BOOL)a12 disabledAppearance:(BOOL)a13 isPressed:(BOOL)a14 action:(id)aBlock;
- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 titlePriority:(unint64_t)a6 artworkCatalog:(id)a7 imageShape:(unint64_t)a8 isTallArtwork:(BOOL)a9 placeholder:(id)a10 accessorySystemImage:(id)a11 isDisabled:(BOOL)a12 isPressed:(BOOL)a13 action:(id)aBlock;
- (void)depress;
@end

@implementation CPUIGridViewBaseViewModel

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 imageShape:(unint64_t)a7 accessorySystemImage:(id)a8 allowsTouches:(BOOL)a9 disabledAppearance:(BOOL)a10 action:(id)aBlock
{
  v13 = _Block_copy(aBlock);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (!a5)
  {
    v20 = 0;
    v22 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = 0;
    goto LABEL_6;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  a8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
LABEL_6:
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  v26 = a6;
  v27 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:image:imageShape:accessorySystemImage:allowsTouches:disabledAppearance:action:)(v14, v16, v17, v19, v20, v22, v26, a7, a8, v24, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v25);

  return v27;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 systemImage:(id)a6 accessorySystemImage:(id)a7 allowsTouches:(BOOL)a8 disabledAppearance:(BOOL)a9 action:(id)aBlock
{
  v12 = _Block_copy(aBlock);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v14;
  v29 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (a5)
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
  if (a7)
  {
    a7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  *(swift_allocObject() + 16) = v12;
  v26 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:systemImage:accessorySystemImage:allowsTouches:disabledAppearance:action:)(v29, v28, v15, v17, v18, v20, v21, v23, a7, v25, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply);

  return v26;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 artworkCatalog:(id)a6 imageShape:(unint64_t)a7 isTallArtwork:(BOOL)a8 placeholder:(id)a9 accessorySystemImage:(id)a10 allowsTouches:(BOOL)a11 disabledAppearance:(BOOL)a12 isPressed:(BOOL)a13 action:(id)aBlock
{
  v16 = a10;
  v17 = _Block_copy(aBlock);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v19;
  v36 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v21;
  v34 = v20;
  if (a5)
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

  if (a10)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  v27 = a6;
  v28 = a9;
  v29 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:artworkCatalog:imageShape:isTallArtwork:placeholder:accessorySystemImage:allowsTouches:disabledAppearance:isPressed:action:)(v36, v35, v34, v33, v32, v31, a6, a7, a8, a9, v16, v25, a11, a12, a13, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v26);

  return v29;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 titlePriority:(unint64_t)a6 artworkCatalog:(id)a7 imageShape:(unint64_t)a8 isTallArtwork:(BOOL)a9 placeholder:(id)a10 accessorySystemImage:(id)a11 allowsTouches:(BOOL)a12 disabledAppearance:(BOOL)a13 isPressed:(BOOL)a14 action:(id)aBlock
{
  v16 = a11;
  v17 = _Block_copy(aBlock);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v19;
  v36 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v21;
  v34 = v20;
  if (a5)
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

  if (a11)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  v27 = a7;
  v28 = a10;
  v29 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:titlePriority:artworkCatalog:imageShape:isTallArtwork:placeholder:accessorySystemImage:allowsTouches:disabledAppearance:isPressed:action:)(v36, v35, v34, v33, v32, v31, a6, a7, a8, a9, a10, v16, v25, a12, a13, a14, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v26);

  return v29;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 imageShape:(unint64_t)a7 backgroundColor:(id)a8 isTallArtwork:(BOOL)a9 accessorySystemImage:(id)a10 allowsTouches:(BOOL)a11 disabledAppearance:(BOOL)a12 action:(id)aBlock
{
  v33 = _Block_copy(aBlock);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v18;
  v35 = v17;
  if (a4)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v20;
    v32 = v19;
    v21 = a10;
    if (a5)
    {
LABEL_3:
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a5 = v23;
      goto LABEL_6;
    }
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v21 = a10;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
LABEL_6:
  if (v21)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = a6;
  v27 = a8;
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  v29 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:image:imageShape:backgroundColor:isTallArtwork:accessorySystemImage:allowsTouches:disabledAppearance:action:)(v35, v34, v32, v31, v22, a5, v26, a7, v27, a9, v21, v25, a11, a12, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v28);

  return v29;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 titlePriority:(unint64_t)a6 artworkCatalog:(id)a7 imageShape:(unint64_t)a8 isTallArtwork:(BOOL)a9 placeholder:(id)a10 accessorySystemImage:(id)a11 isDisabled:(BOOL)a12 isPressed:(BOOL)a13 action:(id)aBlock
{
  v16 = a11;
  v17 = _Block_copy(aBlock);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v19;
  v36 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v21;
  v34 = v20;
  if (a5)
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

  if (a11)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = swift_allocObject();
  v26[2] = v17;
  v27 = a7;
  v28 = a10;
  v29 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:titlePriority:artworkCatalog:imageShape:isTallArtwork:placeholder:accessorySystemImage:isDisabled:isPressed:action:)(v36, v35, v34, v33, v32, v31, a6, a7, a8, a9, a10, v16, v25, a12, a13, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v26);

  return v29;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 imageShape:(unint64_t)a7 backgroundColor:(id)a8 isTallArtwork:(BOOL)a9 accessorySystemImage:(id)a10 allowsTouches:(BOOL)a11 disabledAppearance:(BOOL)a12 canStayPressed:(BOOL)a13 action:(id)aBlock
{
  v34 = _Block_copy(aBlock);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v19;
  v36 = v18;
  if (a4)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v21;
    v33 = v20;
    v22 = a10;
    if (a5)
    {
LABEL_3:
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a5 = v23;
      goto LABEL_6;
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v22 = a10;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v31 = 0;
LABEL_6:
  if (v22)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = a6;
  v27 = a8;
  v28 = swift_allocObject();
  *(v28 + 16) = v34;
  v29 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:image:imageShape:backgroundColor:isTallArtwork:accessorySystemImage:allowsTouches:disabledAppearance:canStayPressed:action:)(v36, v35, v33, v32, v31, a5, v26, a7, v27, a9, v22, v25, a11, a12, a13, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v28);

  return v29;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 imageShape:(unint64_t)a7 accessorySystemImage:(id)a8 isDisabled:(BOOL)a9 action:(id)aBlock
{
  v12 = _Block_copy(aBlock);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (!a5)
  {
    v19 = 0;
    v21 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  a8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
LABEL_6:
  v24 = swift_allocObject();
  *(v24 + 16) = v12;
  v25 = a6;
  v26 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:image:imageShape:accessorySystemImage:allowsTouches:disabledAppearance:action:)(v13, v15, v16, v18, v19, v21, v25, a7, a8, v23, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v24);

  return v26;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 systemImage:(id)a6 accessorySystemImage:(id)a7 isDisabled:(BOOL)a8 action:(id)aBlock
{
  v11 = _Block_copy(aBlock);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v13;
  v28 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (a5)
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
  if (a7)
  {
    a7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  *(swift_allocObject() + 16) = v11;
  v25 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:systemImage:accessorySystemImage:allowsTouches:disabledAppearance:action:)(v28, v27, v14, v16, v17, v19, v20, v22, a7, v24, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply);

  return v25;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 artworkCatalog:(id)a6 imageShape:(unint64_t)a7 isTallArtwork:(BOOL)a8 placeholder:(id)a9 accessorySystemImage:(id)a10 isDisabled:(BOOL)a11 action:(id)aBlock
{
  v14 = a10;
  v15 = _Block_copy(aBlock);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v17;
  v33 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v19;
  v31 = v18;
  if (a5)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  if (a10)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v15;
  v26 = a6;
  v27 = a9;
  v28 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:artworkCatalog:imageShape:isTallArtwork:placeholder:accessorySystemImage:isDisabled:action:)(v33, v32, v31, v30, v20, v22, a6, a7, a8, a9, v14, v24, a11, thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply, v25);

  return v28;
}

- (CPUIGridViewBaseViewModel)initWithId:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 imageShape:(unint64_t)a7 backgroundColor:(id)a8 isTallArtwork:(BOOL)a9 accessorySystemImage:(id)a10 isDisabled:(BOOL)a11 action:(id)aBlock
{
  v31 = _Block_copy(aBlock);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v17;
  v33 = v16;
  if (a4)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v20 = a10;
    if (a5)
    {
LABEL_3:
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a5 = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v30 = 0;
    v19 = 0;
    v20 = a10;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  if (v20)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = a6;
  v26 = a8;
  v27 = swift_allocObject();
  *(v27 + 16) = v31;
  v28 = specialized CPUIGridViewBaseViewModel.init(id:title:subtitle:image:imageShape:backgroundColor:isTallArtwork:accessorySystemImage:isDisabled:action:)(v33, v32, v30, v19, v21, a5, v25, a7, v26, a9, v20, v24, a11, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v27);

  return v28;
}

- (void)depress
{
  v2 = self;
  CPUIGridViewBaseViewModel.depress()();
}

- (CPUIGridViewBaseViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end