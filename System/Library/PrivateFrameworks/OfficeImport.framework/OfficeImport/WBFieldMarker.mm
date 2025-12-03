@interface WBFieldMarker
+ (void)readFrom:(id)from position:(const WrdFieldPosition *)position paragraph:(id)paragraph fieldMarker:(id)marker;
@end

@implementation WBFieldMarker

+ (void)readFrom:(id)from position:(const WrdFieldPosition *)position paragraph:(id)paragraph fieldMarker:(id)marker
{
  fromCopy = from;
  paragraphCopy = paragraph;
  markerCopy = marker;
  WrdCharacterTextRun::WrdCharacterTextRun(&v20);
  textType = [paragraphCopy textType];
  var1 = position->var1;
  v20.var1 = textType;
  v20.var2 = var1;
  wrdReader = [fromCopy wrdReader];
  (*(*wrdReader + 192))(wrdReader, &v20);
  var4 = v20.var4;
  var5 = v20.var5;
  document = [paragraphCopy document];
  properties = [markerCopy properties];
  [WBCharacterProperties readFrom:fromCopy wrdProperties:var4 tracked:var5 document:document properties:properties];

  [markerCopy setFieldPosition:position->var1];
  var2 = position->var2;
  LODWORD(document) = *(var2 + 2);
  [markerCopy setFieldMarkerType:document];
  if (document != 21)
  {
    [markerCopy setFieldType:EshRecord::getDataLength(var2)];
  }

  WrdCharacterTextRun::~WrdCharacterTextRun(&v20);
}

@end