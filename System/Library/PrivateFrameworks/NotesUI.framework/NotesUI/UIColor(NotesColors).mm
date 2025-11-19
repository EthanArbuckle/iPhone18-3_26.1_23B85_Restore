@interface UIColor(NotesColors)
+ (id)ic_notesAppYellowColor;
+ (id)ic_notesDefaultTextColor;
@end

@implementation UIColor(NotesColors)

+ (id)ic_notesAppYellowColor
{
  if (ic_notesAppYellowColor_onceToken != -1)
  {
    +[UIColor(NotesColors) ic_notesAppYellowColor];
  }

  v1 = ic_notesAppYellowColor_appYellowColor;

  return v1;
}

+ (id)ic_notesDefaultTextColor
{
  if (ic_notesDefaultTextColor_onceToken[0] != -1)
  {
    +[UIColor(NotesColors) ic_notesDefaultTextColor];
  }

  v1 = ic_notesDefaultTextColor_defaultTextColor;

  return v1;
}

@end