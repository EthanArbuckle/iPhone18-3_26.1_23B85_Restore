@interface ICNote(AirDropDocumentUI)
+ (void)createNoteForAirDropDocument:()AirDropDocumentUI legacyContext:completion:;
@end

@implementation ICNote(AirDropDocumentUI)

+ (void)createNoteForAirDropDocument:()AirDropDocumentUI legacyContext:completion:
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__ICNote_AirDropDocumentUI__createNoteForAirDropDocument_legacyContext_completion___block_invoke;
  v12[3] = &unk_1E846B940;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [self createNoteForAirDropDocument:a3 processAttributedString:v12 completion:v10];
}

@end