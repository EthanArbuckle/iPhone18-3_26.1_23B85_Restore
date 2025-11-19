@interface MusicKit_SoftLinking(MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails)
+ (id)addWithItemIdentifier:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails itemPositionIdentifier:referenceItemPositionIdentifier:isLastItem:item:;
+ (id)moveItemIdentifier:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails itemPositionIdentifier:referenceItemPositionIdentifier:;
+ (id)removeAll;
+ (id)removeItemIdentifier:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails;
+ (id)updateWithPlaylistName:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails;
@end

@implementation MusicKit_SoftLinking(MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails)

+ (id)addWithItemIdentifier:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails itemPositionIdentifier:referenceItemPositionIdentifier:isLastItem:item:
{
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [objc_alloc(getMPModelLibraryPlaylistEditChangeDetailsClass()) initWithType:1];
  [v15 setItemIdentifier:v14];

  [v15 setItemPositionIdentifier:v13];
  [v15 setReferenceItemPositionIdentifier:v12];

  [v15 setIsLastItem:a6];
  v16 = [v11 _underlyingModelObject];

  [v15 setItem:v16];

  return v15;
}

+ (id)moveItemIdentifier:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails itemPositionIdentifier:referenceItemPositionIdentifier:
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(getMPModelLibraryPlaylistEditChangeDetailsClass()) initWithType:3];
  [v10 setItemIdentifier:v9];

  [v10 setItemPositionIdentifier:v8];
  [v10 setReferenceItemPositionIdentifier:v7];

  return v10;
}

+ (id)removeItemIdentifier:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails
{
  v3 = a3;
  v4 = [objc_alloc(getMPModelLibraryPlaylistEditChangeDetailsClass()) initWithType:2 itemIdentifier:v3];

  return v4;
}

+ (id)updateWithPlaylistName:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails
{
  v3 = a3;
  v4 = [objc_alloc(getMPModelLibraryPlaylistEditChangeDetailsClass()) initWithType:6];
  [v4 setPlaylistName:v3];

  return v4;
}

+ (id)removeAll
{
  v0 = [objc_alloc(getMPModelLibraryPlaylistEditChangeDetailsClass()) initWithType:4];

  return v0;
}

@end