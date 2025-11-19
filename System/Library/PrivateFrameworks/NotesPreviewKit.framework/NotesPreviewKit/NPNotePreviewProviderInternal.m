@interface NPNotePreviewProviderInternal
+ (NPNotePreviewProviderInternal)shared;
- (NPNotePreviewProviderInternal)init;
- (id)previewForUserActivity:(id)a3 error:(id *)a4;
@end

@implementation NPNotePreviewProviderInternal

+ (NPNotePreviewProviderInternal)shared
{
  if (qword_281558A98 != -1)
  {
    swift_once();
  }

  v3 = qword_281558AA0;

  return v3;
}

- (id)previewForUserActivity:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  NotePreviewProvider.preview(for:)(v5, &v11);
  v7 = v12;
  v8 = v13;
  sub_25C770D14();

  type metadata accessor for __NPNotePreviewKey(0);
  sub_25C770484(&qword_27FC12A98, type metadata accessor for __NPNotePreviewKey);
  v9 = sub_25C771868();

  return v9;
}

- (NPNotePreviewProviderInternal)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___NPNotePreviewProviderInternal_cache;
  v5 = [objc_opt_self() defaultManager];
  type metadata accessor for PersistedThumbnailCache();
  v6 = swift_allocObject();
  *(v6 + 2) = v5;
  *(&self->super.isa + v4) = v6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(NPNotePreviewProviderInternal *)&v8 init];
}

@end