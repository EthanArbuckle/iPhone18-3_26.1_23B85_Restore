@interface MusicKit_SoftLinking_MPContentTasteController
+ (MusicKit_SoftLinking_MPContentTasteController)sharedContentTasteController;
- (id)_initWithUnderlyingContentTasteController:(id)a3;
- (int64_t)_contentTasteTypeFromUnderlyingTasteType:(int64_t)a3;
- (int64_t)_underlyingTasteTypeFromContentTasteType:(int64_t)a3;
- (int64_t)tasteTypeForModelObject:(id)a3;
- (void)_handleContentTasteControllerDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)setTasteType:(int64_t)a3 forModelObject:(id)a4 completionHandler:(id)a5;
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

- (id)_initWithUnderlyingContentTasteController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPContentTasteController;
  v6 = [(MusicKit_SoftLinking_MPContentTasteController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingContentTasteController, a3);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = getMPContentTasteControllerDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handleContentTasteControllerDidChangeNotification_ name:v9 object:v7->_underlyingContentTasteController];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getMPContentTasteControllerDidChangeNotification();
  [v3 removeObserver:self name:v4 object:self->_underlyingContentTasteController];

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPContentTasteController;
  [(MusicKit_SoftLinking_MPContentTasteController *)&v5 dealloc];
}

- (int64_t)tasteTypeForModelObject:(id)a3
{
  v4 = [a3 _underlyingModelObject];
  v5 = [(MusicKit_SoftLinking_MPContentTasteController *)self _contentTasteTypeFromUnderlyingTasteType:[(MPContentTasteController *)self->_underlyingContentTasteController tasteTypeForModel:v4]];

  return v5;
}

- (void)setTasteType:(int64_t)a3 forModelObject:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(MusicKit_SoftLinking_MPContentTasteController *)self _underlyingTasteTypeFromContentTasteType:a3];
  v11 = [v9 _underlyingModelObject];

  [(MPContentTasteController *)self->_underlyingContentTasteController setTasteType:v10 forModel:v11 withCompletionHandler:v8];
}

- (int64_t)_contentTasteTypeFromUnderlyingTasteType:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (int64_t)_underlyingTasteTypeFromContentTasteType:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (void)_handleContentTasteControllerDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPContentTasteControllerDidChangeNotification" object:self userInfo:v6];
}

@end