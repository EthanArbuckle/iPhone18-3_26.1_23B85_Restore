@interface NTKPigmentAddController
- (NTKPigmentAddController)initWithFace:(id)face faceView:(id)view slot:(id)slot willExitHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation NTKPigmentAddController

- (NTKPigmentAddController)initWithFace:(id)face faceView:(id)view slot:(id)slot willExitHandler:(id)handler
{
  handlerCopy = handler;
  slotCopy = slot;
  viewCopy = view;
  faceCopy = face;
  v14 = [[_NTKPigmentAddController alloc] initWithFace:faceCopy faceView:viewCopy slot:slotCopy willExitHandler:handlerCopy];

  v19.receiver = self;
  v19.super_class = NTKPigmentAddController;
  v15 = [(NTKCNavigationController *)&v19 initWithRootViewController:v14];
  v16 = v15;
  if (v15)
  {
    presentationController = [(NTKPigmentAddController *)v15 presentationController];
    [presentationController setDelegate:v14];
  }

  return v16;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NTKPigmentAddController;
  [(NTKPigmentAddController *)&v3 viewDidLoad];
  [(NTKPigmentAddController *)self setToolbarHidden:1];
}

@end