@interface DBSceneWorkspace
- (DBSceneWorkspace)initWithIdentifier:(id)a3;
- (FBSceneWorkspaceDelegate)delegate;
- (id)createScene:(id)a3;
- (id)sceneWithIdentifier:(id)a3;
- (void)invalidate;
- (void)setDelegate:(id)a3;
@end

@implementation DBSceneWorkspace

- (DBSceneWorkspace)initWithIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DBSceneWorkspace;
  v5 = [(DBSceneWorkspace *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D0AAE8]) initWithIdentifier:v4];
    workspace = v5->_workspace;
    v5->_workspace = v6;

    v8 = objc_alloc_init(DBSceneWorkspaceAssertionManager);
    assertionManager = v5->_assertionManager;
    v5->_assertionManager = v8;
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(DBSceneWorkspace *)self workspace];
  [v5 setDelegate:v4];
}

- (id)sceneWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBSceneWorkspace *)self workspace];
  v6 = [v5 sceneWithIdentifier:v4];

  return v6;
}

- (id)createScene:(id)a3
{
  v4 = a3;
  v5 = [(DBSceneWorkspace *)self workspace];
  v6 = [v5 createScene:v4];

  if (v6)
  {
    v7 = [(DBSceneWorkspace *)self assertionManager];
    [v6 addObserver:v7];
  }

  return v6;
}

- (void)invalidate
{
  v3 = [(DBSceneWorkspace *)self assertionManager];
  [v3 invalidate];

  v4 = [(DBSceneWorkspace *)self workspace];
  [v4 invalidate];
}

- (FBSceneWorkspaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end