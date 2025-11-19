@interface MNRouteEditorRequest
- (MNRouteEditorRequest)init;
- (id)newAnchorPoints;
- (void)setTraits:(id)a3;
@end

@implementation MNRouteEditorRequest

- (void)setTraits:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E69A2208] sharedService];
    v4 = [v5 defaultTraits];
  }

  [v4 useOnlineToOfflineFailoverRequestModeIfAllowed];
  traits = self->_traits;
  self->_traits = v4;
}

- (id)newAnchorPoints
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(MNRouteEditorRequest *)self currentRoute];
  v5 = [v4 anchorPoints];
  v6 = [v5 anchorPoints];
  v7 = [v3 setWithArray:v6];

  v8 = MEMORY[0x1E695DFA8];
  v9 = [(MNRouteEditorRequest *)self anchorPoints];
  v10 = [v9 anchorPoints];
  v11 = [v8 setWithArray:v10];

  [v11 minusSet:v7];
  return v11;
}

- (MNRouteEditorRequest)init
{
  v6.receiver = self;
  v6.super_class = MNRouteEditorRequest;
  v2 = [(MNRouteEditorRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_action = 0;
    [(MNRouteEditorRequest *)v2 setTraits:0];
    v4 = v3;
  }

  return v3;
}

@end