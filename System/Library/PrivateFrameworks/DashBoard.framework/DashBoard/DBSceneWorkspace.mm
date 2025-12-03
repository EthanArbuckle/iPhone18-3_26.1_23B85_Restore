@interface DBSceneWorkspace
- (DBSceneWorkspace)initWithIdentifier:(id)identifier;
- (FBSceneWorkspaceDelegate)delegate;
- (id)createScene:(id)scene;
- (id)sceneWithIdentifier:(id)identifier;
- (void)invalidate;
- (void)setDelegate:(id)delegate;
@end

@implementation DBSceneWorkspace

- (DBSceneWorkspace)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = DBSceneWorkspace;
  v5 = [(DBSceneWorkspace *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D0AAE8]) initWithIdentifier:identifierCopy];
    workspace = v5->_workspace;
    v5->_workspace = v6;

    v8 = objc_alloc_init(DBSceneWorkspaceAssertionManager);
    assertionManager = v5->_assertionManager;
    v5->_assertionManager = v8;
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  workspace = [(DBSceneWorkspace *)self workspace];
  [workspace setDelegate:delegateCopy];
}

- (id)sceneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workspace = [(DBSceneWorkspace *)self workspace];
  v6 = [workspace sceneWithIdentifier:identifierCopy];

  return v6;
}

- (id)createScene:(id)scene
{
  sceneCopy = scene;
  workspace = [(DBSceneWorkspace *)self workspace];
  v6 = [workspace createScene:sceneCopy];

  if (v6)
  {
    assertionManager = [(DBSceneWorkspace *)self assertionManager];
    [v6 addObserver:assertionManager];
  }

  return v6;
}

- (void)invalidate
{
  assertionManager = [(DBSceneWorkspace *)self assertionManager];
  [assertionManager invalidate];

  workspace = [(DBSceneWorkspace *)self workspace];
  [workspace invalidate];
}

- (FBSceneWorkspaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end