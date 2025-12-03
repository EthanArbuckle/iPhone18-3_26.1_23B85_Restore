@interface DOCRemoteBarButton
- (DOCRemoteBarButton)initWithBarButton:(id)button;
- (DOCRemoteBarButton)initWithCoder:(id)coder;
- (id)remoteUIBarButtonItemDisplayedInNavigationBar:(id)bar;
- (void)encodeWithCoder:(id)coder;
- (void)performOverflowAction;
- (void)performOverflowAction_forCommand:(id)command;
- (void)performOverflowAction_menuLeaf:(id)leaf;
- (void)performPrimaryAction;
@end

@implementation DOCRemoteBarButton

- (DOCRemoteBarButton)initWithBarButton:(id)button
{
  v19 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  v16.receiver = self;
  v16.super_class = DOCRemoteBarButton;
  v6 = [(DOCRemoteBarButton *)&v16 init];
  if (v6)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v6->_uuid;
    v6->_uuid = uUID;

    objc_storeStrong(&v6->_barButton, button);
    v9 = MEMORY[0x1E699A450];
    v10 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v6->_uuid;
      v12 = v10;
      uUIDString = [(NSUUID *)v11 UUIDString];
      *buf = 138412290;
      v18 = uUIDString;
      _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_INFO, "initWithBarButton: uuid: %@", buf, 0xCu);
    }

    v14 = v6;
  }

  return v6;
}

- (void)performPrimaryAction
{
  barButton = [(DOCRemoteBarButton *)self barButton];
  [barButton _doc_ipi_triggerActionForEvent:0];
}

- (void)performOverflowAction
{
  barButton = [(DOCRemoteBarButton *)self barButton];
  menuRepresentation = [barButton menuRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(DOCRemoteBarButton *)self performOverflowAction_forCommand:menuRepresentation];
  }

  else if ([menuRepresentation conformsToProtocol:&unk_1F5F79408])
  {
    [(DOCRemoteBarButton *)self performOverflowAction_menuLeaf:menuRepresentation];
  }
}

- (void)performOverflowAction_forCommand:(id)command
{
  commandCopy = command;
  barButton = [(DOCRemoteBarButton *)self barButton];
  target = [barButton target];
  [commandCopy action];
  if (objc_opt_respondsToSelector())
  {
    [target performSelector:objc_msgSend(commandCopy withObject:{"action"), barButton}];
  }
}

- (void)performOverflowAction_menuLeaf:(id)leaf
{
  leafCopy = leaf;
  barButton = [(DOCRemoteBarButton *)self barButton];
  [leafCopy performWithSender:barButton target:0];
}

- (DOCRemoteBarButton)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [DOCRemoteUIBarButtonItem alloc];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v7 = MEMORY[0x1E699A450];
  v8 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    uUIDString = [v6 UUIDString];
    *buf = 138412290;
    v30 = uUIDString;
    _os_log_impl(&dword_1E57D8000, v9, OS_LOG_TYPE_INFO, "initWithCoder: bar button with uuid: %@", buf, 0xCu);
  }

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v12 = [coderCopy decodeIntegerForKey:@"style"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"landscapeImagePhone"];
  if ([coderCopy decodeBoolForKey:@"isSystemItem"])
  {
    v15 = -[DOCRemoteUIBarButtonItem initWithBarButtonSystemItem:target:action:](v5, "initWithBarButtonSystemItem:target:action:", [coderCopy decodeIntegerForKey:@"systemItem"], 0, 0);
  }

  else if (v11)
  {
    v15 = [(DOCRemoteUIBarButtonItem *)v5 initWithTitle:v11 style:v12 target:0 action:0];
  }

  else if (v13 && v14)
  {
    v15 = [(DOCRemoteUIBarButtonItem *)v5 initWithImage:v13 landscapeImagePhone:v14 style:v12 target:0 action:0];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_15;
    }

    v15 = [(DOCRemoteUIBarButtonItem *)v5 initWithImage:v13 style:v12 target:0 action:0];
  }

  v5 = v15;
LABEL_15:
  -[DOCRemoteUIBarButtonItem setEnabled:](v5, "setEnabled:", [coderCopy decodeBoolForKey:@"enabled"]);
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"possibleTitles"];
  [(DOCRemoteUIBarButtonItem *)v5 setPossibleTitles:v19];

  [coderCopy decodeFloatForKey:@"width"];
  [(DOCRemoteUIBarButtonItem *)v5 setWidth:v20];
  [coderCopy decodeUIEdgeInsetsForKey:@"imageInsets"];
  [(DOCRemoteUIBarButtonItem *)v5 setImageInsets:?];
  [coderCopy decodeUIEdgeInsetsForKey:@"landscapeImagePhoneInsets"];
  [(DOCRemoteUIBarButtonItem *)v5 setLandscapeImagePhoneInsets:?];
  [(DOCRemoteUIBarButtonItem *)v5 setUuid:v6];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityLabel"];
  [(DOCRemoteUIBarButtonItem *)v5 setAccessibilityLabel:v21];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityHint"];
  [(DOCRemoteUIBarButtonItem *)v5 setAccessibilityHint:v22];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"menuRepresentation"];
  [(DOCRemoteUIBarButtonItem *)v5 setMenuRepresentation:v23];

  v24 = [(DOCRemoteBarButton *)self initWithBarButton:v5];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_uuid, v6);
    v26 = +[DOCRemoteUIBarButtonItemRegistry shared];
    [v26 registerInstance:v5];

    v27 = v25;
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  barButton = [(DOCRemoteBarButton *)self barButton];
  [coderCopy encodeBool:objc_msgSend(barButton forKey:{"isSystemItem"), @"isSystemItem"}];
  [coderCopy encodeInteger:objc_msgSend(barButton forKey:{"systemItem"), @"systemItem"}];
  image = [barButton image];
  [coderCopy encodeObject:image forKey:@"image"];

  landscapeImagePhone = [barButton landscapeImagePhone];
  [coderCopy encodeObject:landscapeImagePhone forKey:@"landscapeImagePhone"];

  [coderCopy encodeInteger:objc_msgSend(barButton forKey:{"style"), @"style"}];
  title = [barButton title];
  [coderCopy encodeObject:title forKey:@"title"];

  [coderCopy encodeBool:objc_msgSend(barButton forKey:{"isEnabled"), @"enabled"}];
  possibleTitles = [barButton possibleTitles];
  [coderCopy encodeObject:possibleTitles forKey:@"possibleTitles"];

  [barButton width];
  *&v10 = v10;
  [coderCopy encodeFloat:@"width" forKey:v10];
  [barButton imageInsets];
  [coderCopy encodeUIEdgeInsets:@"imageInsets" forKey:?];
  [barButton landscapeImagePhoneInsets];
  [coderCopy encodeUIEdgeInsets:@"landscapeImagePhoneInsets" forKey:?];
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
  accessibilityLabel = [barButton accessibilityLabel];
  [coderCopy encodeObject:accessibilityLabel forKey:@"accessibilityLabel"];

  accessibilityHint = [barButton accessibilityHint];
  [coderCopy encodeObject:accessibilityHint forKey:@"accessibilityHint"];

  menuRepresentation = [barButton menuRepresentation];
  [coderCopy encodeObject:menuRepresentation forKey:@"menuRepresentation"];

  v14 = MEMORY[0x1E699A450];
  v15 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v15 = *v14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    uuid = self->_uuid;
    v17 = v15;
    uUIDString = [(NSUUID *)uuid UUIDString];
    v19 = 138412290;
    v20 = uUIDString;
    _os_log_impl(&dword_1E57D8000, v17, OS_LOG_TYPE_INFO, "encodeWithCoder: bar button with uuid: %@", &v19, 0xCu);
  }
}

- (id)remoteUIBarButtonItemDisplayedInNavigationBar:(id)bar
{
  barCopy = bar;
  v5 = +[DOCRemoteUIBarButtonItemRegistry shared];
  uuid = [(DOCRemoteBarButton *)self uuid];
  v7 = [v5 barButtonItemPresentedInNavigationBar:barCopy uuid:uuid];

  return v7;
}

@end