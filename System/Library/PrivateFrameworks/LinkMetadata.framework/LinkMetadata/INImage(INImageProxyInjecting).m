@interface INImage(INImageProxyInjecting)
- (void)_injectProxiesForImages:()INImageProxyInjecting completion:;
@end

@implementation INImage(INImageProxyInjecting)

- (void)_injectProxiesForImages:()INImageProxyInjecting completion:
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"LNImage.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v9 = [a1 copy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__INImage_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
  v13[3] = &unk_1E72B11E0;
  v14 = v8;
  v10 = v7[2];
  v11 = v8;
  v10(v7, v9, v13);
}

@end