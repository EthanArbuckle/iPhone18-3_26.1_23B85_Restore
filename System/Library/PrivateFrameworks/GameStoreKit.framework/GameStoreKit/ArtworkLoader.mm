@interface ArtworkLoader
- (void)imageRequest:(id)request didFailWithError:(id)error;
- (void)imageRequest:(id)request didLoadImage:(id)image;
- (void)resourceLoaderDidBeginLoading;
- (void)resourceLoaderDidIdle;
- (void)resourceLoaderDidLoadAllForReason:(id)reason;
@end

@implementation ArtworkLoader

- (void)imageRequest:(id)request didLoadImage:(id)image
{
  requestCopy = request;
  imageCopy = image;

  sub_24EAFB804(requestCopy, image, 0);
}

- (void)imageRequest:(id)request didFailWithError:(id)error
{
  requestCopy = request;
  errorCopy = error;

  ArtworkLoader.imageRequest(_:didFailWithError:)(requestCopy, errorCopy);
}

- (void)resourceLoaderDidBeginLoading
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *&self->assetObserver[15];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);

    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

- (void)resourceLoaderDidLoadAllForReason:(id)reason
{
  v4 = sub_24F91EB58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  if (sub_24EAFED38() && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v8 = *&self->assetObserver[15];
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
}

- (void)resourceLoaderDidIdle
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *&self->assetObserver[15];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);

    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

@end