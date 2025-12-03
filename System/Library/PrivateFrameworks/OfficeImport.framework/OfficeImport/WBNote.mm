@interface WBNote
+ (int)readFrom:(id)from at:(int)at paragraph:(id)paragraph note:(id)note;
@end

@implementation WBNote

+ (int)readFrom:(id)from at:(int)at paragraph:(id)paragraph note:(id)note
{
  fromCopy = from;
  paragraphCopy = paragraph;
  noteCopy = note;
  v26 = 0;
  text = [noteCopy text];
  textType = [text textType];

  if (textType == 1)
  {
    footnoteTable = [fromCopy footnoteTable];
  }

  else
  {
    footnoteTable = [fromCopy endnoteTable];
  }

  NoteAtMainTextCP = WrdNoteTable::getNoteAtMainTextCP(footnoteTable, at, &v26);
  [noteCopy setAutomaticNumbering:*(NoteAtMainTextCP + 20) != 0];
  if (textType == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 5;
  }

  WrdTextRun::WrdTextRun(v24, v16, *(NoteAtMainTextCP + 12));
  v25 = *(NoteAtMainTextCP + 16);
  text2 = [noteCopy text];
  [WBText readFrom:fromCopy text:text2 textRun:v24];

  WrdCharacterTextRun::WrdCharacterTextRun(&v23);
  v18 = *(NoteAtMainTextCP + 8);
  v23.var1 = 0;
  v23.var2 = v18;
  wrdReader = [fromCopy wrdReader];
  (*(*wrdReader + 192))(wrdReader, &v23);
  var3 = v23.var3;
  reference = [noteCopy reference];
  [WBCharacterRun readFrom:fromCopy wrdTextRun:&v23 run:reference paragraph:paragraphCopy];

  WrdCharacterTextRun::~WrdCharacterTextRun(&v23);
  return var3;
}

@end