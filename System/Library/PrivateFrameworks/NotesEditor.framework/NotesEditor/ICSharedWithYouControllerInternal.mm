@interface ICSharedWithYouControllerInternal
+ (ICSharedWithYouControllerInternal)sharedController;
- (NSManagedObjectContext)managedObjectContext;
- (id)highlightForURL:(id)a3;
- (void)fetchShareMetadataWithURLs:(id)a3 completion:(id)a4;
- (void)highlightCenterHighlightsDidChange:(id)a3;
- (void)setManagedObjectContext:(id)a3;
- (void)userAcceptedInvitationWithShareMetadata:(id)a3 associatedObjectID:(id)a4;
@end

@implementation ICSharedWithYouControllerInternal

+ (ICSharedWithYouControllerInternal)sharedController
{
  if (qword_2811999C0 != -1)
  {
    swift_once();
  }

  v3 = qword_2811999D0;

  return v3;
}

- (NSManagedObjectContext)managedObjectContext
{
  v3 = OBJC_IVAR___ICSharedWithYouControllerInternal_managedObjectContext;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setManagedObjectContext:(id)a3
{
  v5 = OBJC_IVAR___ICSharedWithYouControllerInternal_managedObjectContext;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_2153345A0();
  sub_215334870();
  _s11NotesEditor23SharedWithYouControllerC34highlightCenterHighlightsDidChangeyySo011SWHighlightH0CF_0();
}

- (id)highlightForURL:(id)a3
{
  v4 = sub_21549E56C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21549E51C();
  v8 = *(&self->super.isa + OBJC_IVAR___ICSharedWithYouControllerInternal_highlightCenter);
  v9 = self;
  v10 = [v8 highlights];
  sub_2151A6C9C(0, &qword_2811996A8);
  v11 = sub_2154A1F4C();

  v15 = v7;
  v12 = sub_215334174(sub_21533FE14, v14, v11);

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (void)fetchShareMetadataWithURLs:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_21549E56C();
  v6 = sub_2154A1F4C();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  SharedWithYouController.fetchShareMetadata(_:_:)(v6, sub_21533BEB0, v7);
}

- (void)userAcceptedInvitationWithShareMetadata:(id)a3 associatedObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  SharedWithYouController.userAcceptedInvitation(_:_:)(v6, v7);
}

- (void)highlightCenterHighlightsDidChange:(id)a3
{
  v3 = self;
  _s11NotesEditor23SharedWithYouControllerC34highlightCenterHighlightsDidChangeyySo011SWHighlightH0CF_0();
}

@end