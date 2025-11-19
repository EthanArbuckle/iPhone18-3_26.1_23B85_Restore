@interface ICUITextSuggestion
+ (id)calculateResultLiteralTextSuggestionWithResult:(id)a3;
+ (id)calculateResultTextSuggestionWithResult:(id)a3 isRTL:(BOOL)a4;
+ (id)hashtagTextSuggestionWithIdentifier:(id)a3 displayText:(id)a4;
+ (id)literalTextSuggestionWithInputText:(id)a3;
+ (id)mentionTextSuggestionWithIdentifier:(id)a3 displayText:(id)a4 inputText:(id)a5 image:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICUITextSuggestion

+ (id)literalTextSuggestionWithInputText:(id)a3
{
  v3 = a3;
  v4 = [ICUITextSuggestion textSuggestionWithInputText:v3];
  [v4 setType:1];
  v5 = [v3 ic_quotedString];

  [v4 setDisplayText:v5];

  return v4;
}

+ (id)hashtagTextSuggestionWithIdentifier:(id)a3 displayText:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [ICUITextSuggestion textSuggestionWithInputText:v5 searchText:v5];
  [v7 setType:2];
  [v7 setIdentifier:v6];

  [v7 setDisplayText:v5];

  return v7;
}

+ (id)mentionTextSuggestionWithIdentifier:(id)a3 displayText:(id)a4 inputText:(id)a5 image:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [ICUITextSuggestion textSuggestionWithInputText:a5];
  [v12 setType:3];
  [v12 setIdentifier:v11];

  [v12 setDisplayText:v10];
  [v12 setImage:v9];

  return v12;
}

+ (id)calculateResultTextSuggestionWithResult:(id)a3 isRTL:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 formattedResult];
  v7 = [v5 formattedResult];
  v8 = [ICUITextSuggestion textSuggestionWithInputText:v6 searchText:v7];

  [v8 setType:4];
  v9 = MEMORY[0x1E696AEC0];
  if (a4)
  {
    v10 = [v5 formattedResult];
    v11 = [MEMORY[0x1E696AEC0] ic_calculateEqualsSignString];
    [v5 expression];
  }

  else
  {
    v10 = [v5 expression];
    v11 = [MEMORY[0x1E696AEC0] ic_calculateEqualsSignString];
    [v5 formattedResult];
  }
  v12 = ;
  v13 = [v9 stringWithFormat:@"%@%@%@", v10, v11, v12];
  [v8 setDisplayText:v13];

  return v8;
}

+ (id)calculateResultLiteralTextSuggestionWithResult:(id)a3
{
  v3 = a3;
  v4 = [v3 formattedResult];
  v5 = [v3 formattedResult];
  v6 = [ICUITextSuggestion textSuggestionWithInputText:v4 searchText:v5];

  [v6 setType:5];
  v7 = [v3 formattedResult];

  [v6 setDisplayText:v7];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(UITextSuggestion *)self inputText];
  v5 = [ICUITextSuggestion textSuggestionWithInputText:v4];

  [v5 setType:{-[ICUITextSuggestion type](self, "type")}];
  v6 = [(ICUITextSuggestion *)self identifier];
  [v5 setIdentifier:v6];

  v7 = [(UITextSuggestion *)self displayText];
  [v5 setDisplayText:v7];

  v8 = [(UITextSuggestion *)self searchText];
  [v5 setSearchText:v8];

  v9 = [(UITextSuggestion *)self image];
  [v5 setImage:v9];

  return v5;
}

@end