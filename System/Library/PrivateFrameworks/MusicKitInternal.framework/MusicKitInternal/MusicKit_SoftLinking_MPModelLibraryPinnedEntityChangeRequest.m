@interface MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)a3 position:(int64_t)a4;
- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)a3 defaultAction:(int64_t)a4;
- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)a3;
- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)a3 defaultAction:(int64_t)a4;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)a3 defaultAction:(int64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest;
  v7 = [(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest *)&v14 init];
  if (v7)
  {
    v8 = [MusicKit_SoftLinking_MPModelLibraryPin _underlyingPinActionForAction:a4];
    v9 = getMPModelLibraryPinnedEntityChangeRequestClass();
    v10 = [v6 _underlyingModelObject];
    v11 = [v9 initWithEntityToPin:v10 defaultAction:v8];
    underlyingPinnedEntityChangeRequest = v7->_underlyingPinnedEntityChangeRequest;
    v7->_underlyingPinnedEntityChangeRequest = v11;
  }

  return v7;
}

- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest;
  v5 = [(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest *)&v10 init];
  if (v5)
  {
    v6 = [v4 _underlyingModelObject];
    v7 = [getMPModelLibraryPinnedEntityChangeRequestClass() initWithEntityToUnPin:v6];
    underlyingPinnedEntityChangeRequest = v5->_underlyingPinnedEntityChangeRequest;
    v5->_underlyingPinnedEntityChangeRequest = v7;
  }

  return v5;
}

- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)a3 position:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest;
  v7 = [(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest *)&v12 init];
  if (v7)
  {
    v8 = [v6 _underlyingModelObject];
    v9 = [getMPModelLibraryPinnedEntityChangeRequestClass() initWithEntityToMove:v8 position:a4];
    underlyingPinnedEntityChangeRequest = v7->_underlyingPinnedEntityChangeRequest;
    v7->_underlyingPinnedEntityChangeRequest = v9;
  }

  return v7;
}

- (MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)a3 defaultAction:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest;
  v7 = [(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest *)&v13 init];
  if (v7)
  {
    v8 = [MusicKit_SoftLinking_MPModelLibraryPin _underlyingPinActionForAction:a4];
    v9 = [v6 _underlyingModelObject];
    v10 = [getMPModelLibraryPinnedEntityChangeRequestClass() initWithEntityToUpdate:v9 defaultAction:v8];
    underlyingPinnedEntityChangeRequest = v7->_underlyingPinnedEntityChangeRequest;
    v7->_underlyingPinnedEntityChangeRequest = v10;
  }

  return v7;
}

@end