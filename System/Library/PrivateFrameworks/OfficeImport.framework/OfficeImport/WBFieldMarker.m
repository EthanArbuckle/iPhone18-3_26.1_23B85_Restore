@interface WBFieldMarker
+ (void)readFrom:(id)a3 position:(const WrdFieldPosition *)a4 paragraph:(id)a5 fieldMarker:(id)a6;
@end

@implementation WBFieldMarker

+ (void)readFrom:(id)a3 position:(const WrdFieldPosition *)a4 paragraph:(id)a5 fieldMarker:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  WrdCharacterTextRun::WrdCharacterTextRun(&v20);
  v12 = [v10 textType];
  var1 = a4->var1;
  v20.var1 = v12;
  v20.var2 = var1;
  v14 = [v9 wrdReader];
  (*(*v14 + 192))(v14, &v20);
  var4 = v20.var4;
  var5 = v20.var5;
  v17 = [v10 document];
  v18 = [v11 properties];
  [WBCharacterProperties readFrom:v9 wrdProperties:var4 tracked:var5 document:v17 properties:v18];

  [v11 setFieldPosition:a4->var1];
  var2 = a4->var2;
  LODWORD(v17) = *(var2 + 2);
  [v11 setFieldMarkerType:v17];
  if (v17 != 21)
  {
    [v11 setFieldType:EshRecord::getDataLength(var2)];
  }

  WrdCharacterTextRun::~WrdCharacterTextRun(&v20);
}

@end