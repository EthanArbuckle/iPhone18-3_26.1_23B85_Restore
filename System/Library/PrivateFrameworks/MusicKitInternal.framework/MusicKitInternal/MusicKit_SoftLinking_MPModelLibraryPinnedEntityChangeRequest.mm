@interface MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)move position:(int64_t)position;
- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)pin defaultAction:(int64_t)action;
- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)pin;
- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)update defaultAction:(int64_t)action;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)pin defaultAction:(int64_t)action
{
  pinCopy = pin;
  v14.receiver = self;
  v14.super_class = MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest;
  v7 = [(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest *)&v14 init];
  if (v7)
  {
    v8 = [MusicKit_SoftLinking_MPModelLibraryPin _underlyingPinActionForAction:action];
    v9 = getMPModelLibraryPinnedEntityChangeRequestClass();
    _underlyingModelObject = [pinCopy _underlyingModelObject];
    v11 = [v9 initWithEntityToPin:_underlyingModelObject defaultAction:v8];
    underlyingPinnedEntityChangeRequest = v7->_underlyingPinnedEntityChangeRequest;
    v7->_underlyingPinnedEntityChangeRequest = v11;
  }

  return v7;
}

- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)pin
{
  pinCopy = pin;
  v10.receiver = self;
  v10.super_class = MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest;
  v5 = [(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest *)&v10 init];
  if (v5)
  {
    _underlyingModelObject = [pinCopy _underlyingModelObject];
    v7 = [getMPModelLibraryPinnedEntityChangeRequestClass() initWithEntityToUnPin:_underlyingModelObject];
    underlyingPinnedEntityChangeRequest = v5->_underlyingPinnedEntityChangeRequest;
    v5->_underlyingPinnedEntityChangeRequest = v7;
  }

  return v5;
}

- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)move position:(int64_t)position
{
  moveCopy = move;
  v12.receiver = self;
  v12.super_class = MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest;
  v7 = [(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest *)&v12 init];
  if (v7)
  {
    _underlyingModelObject = [moveCopy _underlyingModelObject];
    v9 = [getMPModelLibraryPinnedEntityChangeRequestClass() initWithEntityToMove:_underlyingModelObject position:position];
    underlyingPinnedEntityChangeRequest = v7->_underlyingPinnedEntityChangeRequest;
    v7->_underlyingPinnedEntityChangeRequest = v9;
  }

  return v7;
}

- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)update defaultAction:(int64_t)action
{
  updateCopy = update;
  v13.receiver = self;
  v13.super_class = MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest;
  v7 = [(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest *)&v13 init];
  if (v7)
  {
    v8 = [MusicKit_SoftLinking_MPModelLibraryPin _underlyingPinActionForAction:action];
    _underlyingModelObject = [updateCopy _underlyingModelObject];
    v10 = [getMPModelLibraryPinnedEntityChangeRequestClass() initWithEntityToUpdate:_underlyingModelObject defaultAction:v8];
    underlyingPinnedEntityChangeRequest = v7->_underlyingPinnedEntityChangeRequest;
    v7->_underlyingPinnedEntityChangeRequest = v10;
  }

  return v7;
}

@end