@interface MNRouteEditorRequest
- (MNRouteEditorRequest)init;
- (id)newAnchorPoints;
- (void)setTraits:(id)traits;
@end

@implementation MNRouteEditorRequest

- (void)setTraits:(id)traits
{
  traitsCopy = traits;
  if (!traitsCopy)
  {
    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    traitsCopy = [mEMORY[0x1E69A2208] defaultTraits];
  }

  [traitsCopy useOnlineToOfflineFailoverRequestModeIfAllowed];
  traits = self->_traits;
  self->_traits = traitsCopy;
}

- (id)newAnchorPoints
{
  v3 = MEMORY[0x1E695DFD8];
  currentRoute = [(MNRouteEditorRequest *)self currentRoute];
  anchorPoints = [currentRoute anchorPoints];
  v5AnchorPoints = [anchorPoints anchorPoints];
  v7 = [v3 setWithArray:v5AnchorPoints];

  v8 = MEMORY[0x1E695DFA8];
  anchorPoints2 = [(MNRouteEditorRequest *)self anchorPoints];
  v9AnchorPoints = [anchorPoints2 anchorPoints];
  v11 = [v8 setWithArray:v9AnchorPoints];

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