@interface WBOleObject
+ (void)readFrom:(id)from at:(int)at oleId:(unsigned int)id textRun:(WrdCharacterTextRun *)run paragraph:(id)paragraph to:(id)to;
@end

@implementation WBOleObject

+ (void)readFrom:(id)from at:(int)at oleId:(unsigned int)id textRun:(WrdCharacterTextRun *)run paragraph:(id)paragraph to:(id)to
{
  v11 = *&id;
  v12 = *&at;
  fromCopy = from;
  paragraphCopy = paragraph;
  toCopy = to;
  v22.receiver = self;
  v22.super_class = &OBJC_METACLASS___WBOleObject;
  objc_msgSendSuper2(&v22, sel_readFrom_at_textRun_paragraph_to_, fromCopy, v12, run, paragraphCopy, toCopy);
  [TCProgressContext createStageWithSteps:1.0 takingSteps:0.0];
  ObjectPoolStorage = WrdBinaryReader::getObjectPoolStorage([fromCopy wrdReader]);
  if (ObjectPoolStorage)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"_%d", v11];
    cancelDelegate = [fromCopy cancelDelegate];
    v20 = [OABOle readFromParentStorage:ObjectPoolStorage storageName:v18 cancel:cancelDelegate];

    +[TCProgressContext endStage];
    drawable = [toCopy drawable];
    [drawable setOle:v20];
  }

  else
  {
    +[TCProgressContext endStage];
  }
}

@end