@interface WBNote
+ (int)readFrom:(id)a3 at:(int)a4 paragraph:(id)a5 note:(id)a6;
@end

@implementation WBNote

+ (int)readFrom:(id)a3 at:(int)a4 paragraph:(id)a5 note:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v26 = 0;
  v12 = [v11 text];
  v13 = [v12 textType];

  if (v13 == 1)
  {
    v14 = [v9 footnoteTable];
  }

  else
  {
    v14 = [v9 endnoteTable];
  }

  NoteAtMainTextCP = WrdNoteTable::getNoteAtMainTextCP(v14, a4, &v26);
  [v11 setAutomaticNumbering:*(NoteAtMainTextCP + 20) != 0];
  if (v13 == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 5;
  }

  WrdTextRun::WrdTextRun(v24, v16, *(NoteAtMainTextCP + 12));
  v25 = *(NoteAtMainTextCP + 16);
  v17 = [v11 text];
  [WBText readFrom:v9 text:v17 textRun:v24];

  WrdCharacterTextRun::WrdCharacterTextRun(&v23);
  v18 = *(NoteAtMainTextCP + 8);
  v23.var1 = 0;
  v23.var2 = v18;
  v19 = [v9 wrdReader];
  (*(*v19 + 192))(v19, &v23);
  var3 = v23.var3;
  v21 = [v11 reference];
  [WBCharacterRun readFrom:v9 wrdTextRun:&v23 run:v21 paragraph:v10];

  WrdCharacterTextRun::~WrdCharacterTextRun(&v23);
  return var3;
}

@end