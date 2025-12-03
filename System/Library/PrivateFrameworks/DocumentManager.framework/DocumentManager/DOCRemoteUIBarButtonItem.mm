@interface DOCRemoteUIBarButtonItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DOCRemoteUIBarButtonItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [(DOCRemoteUIBarButtonItem *)self uuid];
    uuid2 = [equalCopy uuid];
    v7 = [uuid isEqual:uuid2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [DOCRemoteUIBarButtonItem alloc];
  style = [(DOCRemoteUIBarButtonItem *)self style];
  title = [(DOCRemoteUIBarButtonItem *)self title];
  v8 = [title copyWithZone:zone];

  image = [(DOCRemoteUIBarButtonItem *)self image];
  landscapeImagePhone = [(DOCRemoteUIBarButtonItem *)self landscapeImagePhone];
  if (![(DOCRemoteUIBarButtonItem *)self isSystemItem])
  {
    if (v8)
    {
      v12 = [(DOCRemoteUIBarButtonItem *)v5 initWithTitle:v8 style:style target:0 action:0];
    }

    else if (image && landscapeImagePhone)
    {
      v12 = [(DOCRemoteUIBarButtonItem *)v5 initWithImage:image landscapeImagePhone:landscapeImagePhone style:style target:0 action:0];
    }

    else
    {
      if (!image)
      {
        goto LABEL_11;
      }

      v12 = [(DOCRemoteUIBarButtonItem *)v5 initWithImage:image style:style target:0 action:0];
    }

    v5 = v12;
    goto LABEL_11;
  }

  v11 = v5;
  v5 = [(DOCRemoteUIBarButtonItem *)v11 initWithBarButtonSystemItem:[(DOCRemoteUIBarButtonItem *)self systemItem] target:0 action:0];

LABEL_11:
  uuid = [(DOCRemoteUIBarButtonItem *)self uuid];
  v14 = [uuid copyWithZone:zone];
  [(DOCRemoteUIBarButtonItem *)v5 setUuid:v14];

  target = [(DOCRemoteUIBarButtonItem *)self target];
  [(DOCRemoteUIBarButtonItem *)v5 setTarget:target];

  [(DOCRemoteUIBarButtonItem *)v5 setAction:[(DOCRemoteUIBarButtonItem *)self action]];
  [(DOCRemoteUIBarButtonItem *)v5 setEnabled:[(DOCRemoteUIBarButtonItem *)self isEnabled]];
  possibleTitles = [(DOCRemoteUIBarButtonItem *)self possibleTitles];
  v17 = [possibleTitles copyWithZone:zone];
  [(DOCRemoteUIBarButtonItem *)v5 setPossibleTitles:v17];

  [(DOCRemoteUIBarButtonItem *)self width];
  [(DOCRemoteUIBarButtonItem *)v5 setWidth:?];
  [(DOCRemoteUIBarButtonItem *)self imageInsets];
  [(DOCRemoteUIBarButtonItem *)v5 setImageInsets:?];
  [(DOCRemoteUIBarButtonItem *)self landscapeImagePhoneInsets];
  [(DOCRemoteUIBarButtonItem *)v5 setLandscapeImagePhoneInsets:?];
  accessibilityLabel = [(DOCRemoteUIBarButtonItem *)self accessibilityLabel];
  [(DOCRemoteUIBarButtonItem *)v5 setAccessibilityLabel:accessibilityLabel];

  accessibilityHint = [(DOCRemoteUIBarButtonItem *)self accessibilityHint];
  [(DOCRemoteUIBarButtonItem *)v5 setAccessibilityHint:accessibilityHint];

  menuRepresentation = [(DOCRemoteUIBarButtonItem *)self menuRepresentation];
  [(DOCRemoteUIBarButtonItem *)v5 setMenuRepresentation:menuRepresentation];

  v21 = +[DOCRemoteUIBarButtonItemRegistry shared];
  [v21 registerInstance:v5];

  return v5;
}

@end