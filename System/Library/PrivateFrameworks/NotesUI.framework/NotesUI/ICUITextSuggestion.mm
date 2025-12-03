@interface ICUITextSuggestion
+ (id)calculateResultLiteralTextSuggestionWithResult:(id)result;
+ (id)calculateResultTextSuggestionWithResult:(id)result isRTL:(BOOL)l;
+ (id)hashtagTextSuggestionWithIdentifier:(id)identifier displayText:(id)text;
+ (id)literalTextSuggestionWithInputText:(id)text;
+ (id)mentionTextSuggestionWithIdentifier:(id)identifier displayText:(id)text inputText:(id)inputText image:(id)image;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICUITextSuggestion

+ (id)literalTextSuggestionWithInputText:(id)text
{
  textCopy = text;
  v4 = [ICUITextSuggestion textSuggestionWithInputText:textCopy];
  [v4 setType:1];
  ic_quotedString = [textCopy ic_quotedString];

  [v4 setDisplayText:ic_quotedString];

  return v4;
}

+ (id)hashtagTextSuggestionWithIdentifier:(id)identifier displayText:(id)text
{
  textCopy = text;
  identifierCopy = identifier;
  v7 = [ICUITextSuggestion textSuggestionWithInputText:textCopy searchText:textCopy];
  [v7 setType:2];
  [v7 setIdentifier:identifierCopy];

  [v7 setDisplayText:textCopy];

  return v7;
}

+ (id)mentionTextSuggestionWithIdentifier:(id)identifier displayText:(id)text inputText:(id)inputText image:(id)image
{
  imageCopy = image;
  textCopy = text;
  identifierCopy = identifier;
  v12 = [ICUITextSuggestion textSuggestionWithInputText:inputText];
  [v12 setType:3];
  [v12 setIdentifier:identifierCopy];

  [v12 setDisplayText:textCopy];
  [v12 setImage:imageCopy];

  return v12;
}

+ (id)calculateResultTextSuggestionWithResult:(id)result isRTL:(BOOL)l
{
  resultCopy = result;
  formattedResult = [resultCopy formattedResult];
  formattedResult2 = [resultCopy formattedResult];
  v8 = [ICUITextSuggestion textSuggestionWithInputText:formattedResult searchText:formattedResult2];

  [v8 setType:4];
  v9 = MEMORY[0x1E696AEC0];
  if (l)
  {
    formattedResult3 = [resultCopy formattedResult];
    ic_calculateEqualsSignString = [MEMORY[0x1E696AEC0] ic_calculateEqualsSignString];
    [resultCopy expression];
  }

  else
  {
    formattedResult3 = [resultCopy expression];
    ic_calculateEqualsSignString = [MEMORY[0x1E696AEC0] ic_calculateEqualsSignString];
    [resultCopy formattedResult];
  }
  v12 = ;
  v13 = [v9 stringWithFormat:@"%@%@%@", formattedResult3, ic_calculateEqualsSignString, v12];
  [v8 setDisplayText:v13];

  return v8;
}

+ (id)calculateResultLiteralTextSuggestionWithResult:(id)result
{
  resultCopy = result;
  formattedResult = [resultCopy formattedResult];
  formattedResult2 = [resultCopy formattedResult];
  v6 = [ICUITextSuggestion textSuggestionWithInputText:formattedResult searchText:formattedResult2];

  [v6 setType:5];
  formattedResult3 = [resultCopy formattedResult];

  [v6 setDisplayText:formattedResult3];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  inputText = [(UITextSuggestion *)self inputText];
  v5 = [ICUITextSuggestion textSuggestionWithInputText:inputText];

  [v5 setType:{-[ICUITextSuggestion type](self, "type")}];
  identifier = [(ICUITextSuggestion *)self identifier];
  [v5 setIdentifier:identifier];

  displayText = [(UITextSuggestion *)self displayText];
  [v5 setDisplayText:displayText];

  searchText = [(UITextSuggestion *)self searchText];
  [v5 setSearchText:searchText];

  image = [(UITextSuggestion *)self image];
  [v5 setImage:image];

  return v5;
}

@end