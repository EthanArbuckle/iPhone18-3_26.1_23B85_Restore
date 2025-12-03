@interface MusicKit_SoftLinking_MPContentTasteController
+ (MusicKit_SoftLinking_MPContentTasteController)sharedContentTasteController;
- (id)_initWithUnderlyingContentTasteController:(id)controller;
- (int64_t)_contentTasteTypeFromUnderlyingTasteType:(int64_t)type;
- (int64_t)_underlyingTasteTypeFromContentTasteType:(int64_t)type;
- (int64_t)tasteTypeForModelObject:(id)object;
- (void)_handleContentTasteControllerDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)setTasteType:(int64_t)type forModelObject:(id)object completionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPContentTasteController

+ (MusicKit_SoftLinking_MPContentTasteController)sharedContentTasteController
{
  if (sharedContentTasteController_sOnceToken != -1)
  {
    +[MusicKit_SoftLinking_MPContentTasteController sharedContentTasteController];
  }

  v3 = sharedContentTasteController_sSharedContentTasteController;

  return v3;
}

- (id)_initWithUnderlyingContentTasteController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPContentTasteController;
  v6 = [(MusicKit_SoftLinking_MPContentTasteController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingContentTasteController, controller);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = getMPContentTasteControllerDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleContentTasteControllerDidChangeNotification_ name:v9 object:v7->_underlyingContentTasteController];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getMPContentTasteControllerDidChangeNotification();
  [defaultCenter removeObserver:self name:v4 object:self->_underlyingContentTasteController];

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPContentTasteController;
  [(MusicKit_SoftLinking_MPContentTasteController *)&v5 dealloc];
}

- (int64_t)tasteTypeForModelObject:(id)object
{
  _underlyingModelObject = [object _underlyingModelObject];
  v5 = [(MusicKit_SoftLinking_MPContentTasteController *)self _contentTasteTypeFromUnderlyingTasteType:[(MPContentTasteController *)self->_underlyingContentTasteController tasteTypeForModel:_underlyingModelObject]];

  return v5;
}

- (void)setTasteType:(int64_t)type forModelObject:(id)object completionHandler:(id)handler
{
  handlerCopy = handler;
  objectCopy = object;
  v10 = [(MusicKit_SoftLinking_MPContentTasteController *)self _underlyingTasteTypeFromContentTasteType:type];
  _underlyingModelObject = [objectCopy _underlyingModelObject];

  [(MPContentTasteController *)self->_underlyingContentTasteController setTasteType:v10 forModel:_underlyingModelObject withCompletionHandler:handlerCopy];
}

- (int64_t)_contentTasteTypeFromUnderlyingTasteType:(int64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

- (int64_t)_underlyingTasteTypeFromContentTasteType:(int64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

- (void)_handleContentTasteControllerDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x1E696AD88];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPContentTasteControllerDidChangeNotification" object:self userInfo:userInfo];
}

@end