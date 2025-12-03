@interface ICSystemPaperDocumentController
+ (ICSystemPaperDocumentController)sharedInstance;
- (ICSystemPaperDocumentController)init;
- (id)presenterForPaperIdentifier:(id)identifier;
- (void)addPresenter:(id)presenter;
- (void)removePresenter:(id)presenter;
@end

@implementation ICSystemPaperDocumentController

+ (ICSystemPaperDocumentController)sharedInstance
{
  if (qword_2811998D8 != -1)
  {
    swift_once();
  }

  v3 = qword_2811998E0;

  return v3;
}

- (ICSystemPaperDocumentController)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___ICSystemPaperDocumentController_presenters) = MEMORY[0x277D84F90];
  sub_21549EADC();
  sub_21549EA9C();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(ICSystemPaperDocumentController *)&v5 init];
}

- (void)addPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  ICSystemPaperDocumentController.add(_:)(presenterCopy);
}

- (void)removePresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  ICSystemPaperDocumentController.remove(_:)(presenterCopy);
}

- (id)presenterForPaperIdentifier:(id)identifier
{
  v4 = sub_2154A1D6C();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  ICSystemPaperDocumentController.presenter(for:)(v9, v8);
  v11 = v10;

  return v11;
}

@end