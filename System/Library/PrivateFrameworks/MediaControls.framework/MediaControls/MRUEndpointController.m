@interface MRUEndpointController
+ (id)localEndpointController;
+ (id)proactiveEndpointController;
+ (id)proactiveRecommendedEndpointController;
+ (id)proactiveUserSelectedEndpointController;
+ (id)userSelectedEndpointController;
- (BOOL)containsOutputDeviceWithRouteUID:(id)a3;
- (BOOL)isEndpointDiscovered;
- (BOOL)updatesActiveEndpointInPlace;
- (MRUEndpointController)initWithEndpointController:(id)a3;
- (MRUEndpointController)initWithRouteUID:(id)a3 client:(id)a4 player:(id)a5;
- (NSString)routeUID;
- (int64_t)state;
- (void)endpointController:(id)a3 didLoadNewResponse:(id)a4;
- (void)endpointControllerAllowsAutomaticResponseLoadingDidUpdate:(id)a3;
- (void)endpointControllerDidChangeState:(id)a3;
- (void)notifyObserversRouteDidUpdate;
@end

@implementation MRUEndpointController

+ (id)localEndpointController
{
  v3 = [MediaControlsEndpointController alloc];
  v4 = [MEMORY[0x1E6970490] systemRoute];
  v5 = [(MediaControlsEndpointController *)v3 initWithEndpoint:v4];

  v6 = [[a1 alloc] initWithEndpointController:v5];

  return v6;
}

+ (id)userSelectedEndpointController
{
  v3 = [[MediaControlsActiveEndpointController alloc] initWithActiveEndpointType:0];
  v4 = [[a1 alloc] initWithEndpointController:v3];

  return v4;
}

+ (id)proactiveEndpointController
{
  v3 = [[MediaControlsActiveEndpointController alloc] initWithActiveEndpointType:1];
  v4 = [[a1 alloc] initWithEndpointController:v3];

  return v4;
}

+ (id)proactiveUserSelectedEndpointController
{
  v3 = [MEMORY[0x1E69B0B28] currentSettings];
  v4 = [v3 supportManyRecommendationsPlatters];

  if (v4)
  {
    [a1 userSelectedEndpointController];
  }

  else
  {
    [a1 proactiveEndpointController];
  }
  v5 = ;

  return v5;
}

+ (id)proactiveRecommendedEndpointController
{
  v3 = [[MediaControlsActiveEndpointController alloc] initWithActiveEndpointType:3];
  v4 = [[a1 alloc] initWithEndpointController:v3];

  return v4;
}

- (MRUEndpointController)initWithEndpointController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MRUEndpointController;
  v6 = [(MRUEndpointController *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_endpointController, a3);
    [(MediaControlsEndpointController *)v6->_endpointController setDelegate:v6];
  }

  return v6;
}

- (MRUEndpointController)initWithRouteUID:(id)a3 client:(id)a4 player:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[MediaControlsStandaloneEndpointController alloc] initWithRouteUID:v10 client:v9 player:v8];

  v12 = [(MRUEndpointController *)self initWithEndpointController:v11];
  return v12;
}

- (NSString)routeUID
{
  v2 = [(MediaControlsEndpointController *)self->_endpointController route];
  v3 = [v2 routeUID];

  return v3;
}

- (int64_t)state
{
  result = [(MediaControlsEndpointController *)self->_endpointController state];
  if (result >= 4)
  {
    return -1;
  }

  return result;
}

- (BOOL)isEndpointDiscovered
{
  v3 = [(MRUEndpointController *)self endpointController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  v5 = [(MRUEndpointController *)self endpointController];
  v6 = [v5 isEndpointDiscovered];

  return v6;
}

- (BOOL)updatesActiveEndpointInPlace
{
  endpointController = self->_endpointController;
  v3 = objc_opt_class();

  return [(MediaControlsEndpointController *)endpointController isMemberOfClass:v3];
}

- (BOOL)containsOutputDeviceWithRouteUID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MediaControlsEndpointController *)self->_endpointController route];
  v6 = [objc_msgSend(v5 "endpoint")];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsUID:v4])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)endpointController:(id)a3 didLoadNewResponse:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 endpointController:self didChangeResponse:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)endpointControllerDidChangeState:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 endpointController:self didChangeState:{-[MRUEndpointController state](self, "state")}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)endpointControllerAllowsAutomaticResponseLoadingDidUpdate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 endpointController:self didAllowAutomaticResponseLoading:{objc_msgSend(v4, "allowsAutomaticResponseLoading")}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)notifyObserversRouteDidUpdate
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [(MRUEndpointController *)self route];
          [v8 endpointController:self didChangeRoute:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

@end