@interface EDFontsCollection
- (unint64_t)indexOfObjectWithFontName:(id)name color:(id)color;
@end

@implementation EDFontsCollection

- (unint64_t)indexOfObjectWithFontName:(id)name color:(id)color
{
  nameCopy = name;
  colorCopy = color;
  v8 = [(EDCollection *)self count];
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [(EDCollection *)self objectAtIndex:v9];
      name = [v10 name];
      v12 = name;
      if (name && ([name isEqual:nameCopy] & 1) != 0 && (objc_msgSend(v10, "color"), v13 = objc_claimAutoreleasedReturnValue(), (v14 = v13) != 0))
      {
        v15 = [v13 isEqual:colorCopy];

        if (v15)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      ++v9;
    }

    while (v8 != v9);
  }

  v9 = -1;
LABEL_11:

  return v9;
}

@end