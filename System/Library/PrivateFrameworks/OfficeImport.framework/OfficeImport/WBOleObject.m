@interface WBOleObject
+ (void)readFrom:(id)a3 at:(int)a4 oleId:(unsigned int)a5 textRun:(WrdCharacterTextRun *)a6 paragraph:(id)a7 to:(id)a8;
@end

@implementation WBOleObject

+ (void)readFrom:(id)a3 at:(int)a4 oleId:(unsigned int)a5 textRun:(WrdCharacterTextRun *)a6 paragraph:(id)a7 to:(id)a8
{
  v11 = *&a5;
  v12 = *&a4;
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v22.receiver = a1;
  v22.super_class = &OBJC_METACLASS___WBOleObject;
  objc_msgSendSuper2(&v22, sel_readFrom_at_textRun_paragraph_to_, v14, v12, a6, v15, v16);
  [TCProgressContext createStageWithSteps:1.0 takingSteps:0.0];
  ObjectPoolStorage = WrdBinaryReader::getObjectPoolStorage([v14 wrdReader]);
  if (ObjectPoolStorage)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"_%d", v11];
    v19 = [v14 cancelDelegate];
    v20 = [OABOle readFromParentStorage:ObjectPoolStorage storageName:v18 cancel:v19];

    +[TCProgressContext endStage];
    v21 = [v16 drawable];
    [v21 setOle:v20];
  }

  else
  {
    +[TCProgressContext endStage];
  }
}

@end