@interface CKMediaObject(Compose)
@end

@implementation CKMediaObject(Compose)

- (void)_composeImageForBalloonView:()Compose colorType:traitCollection:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CKBalloonView_CKMediaObject.m" lineNumber:316 description:{@"A traitCollection is needed to create a compose image for balloon view %@", a3}];
}

@end