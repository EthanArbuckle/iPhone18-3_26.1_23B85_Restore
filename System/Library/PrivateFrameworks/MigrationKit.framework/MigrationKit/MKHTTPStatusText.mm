@interface MKHTTPStatusText
+ (id)sharedInstance;
+ (id)statusText:(unint64_t)text;
- (MKHTTPStatusText)init;
- (id)statusText:(unint64_t)text;
@end

@implementation MKHTTPStatusText

- (MKHTTPStatusText)init
{
  v9[63] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = MKHTTPStatusText;
  v2 = [(MKHTTPStatusText *)&v7 init];
  if (v2)
  {
    v8[0] = &unk_286AAC8C0;
    v8[1] = &unk_286AAC8D8;
    v9[0] = @"Continue";
    v9[1] = @"Switching Protocols";
    v8[2] = &unk_286AAC8F0;
    v8[3] = &unk_286AAC908;
    v9[2] = @"Processing";
    v9[3] = @"Early Hints";
    v8[4] = &unk_286AAC920;
    v8[5] = &unk_286AAC938;
    v9[4] = @"OK";
    v9[5] = @"Created";
    v8[6] = &unk_286AAC950;
    v8[7] = &unk_286AAC968;
    v9[6] = @"Accepted";
    v9[7] = @"Non-Authoritative Information";
    v8[8] = &unk_286AAC980;
    v8[9] = &unk_286AAC998;
    v9[8] = @"No Content";
    v9[9] = @"Reset Content";
    v8[10] = &unk_286AAC9B0;
    v8[11] = &unk_286AAC9C8;
    v9[10] = @"Partial Content";
    v9[11] = @"Multi-Status";
    v8[12] = &unk_286AAC9E0;
    v8[13] = &unk_286AAC9F8;
    v9[12] = @"Already Reported";
    v9[13] = @"IM Used";
    v8[14] = &unk_286AACA10;
    v8[15] = &unk_286AACA28;
    v9[14] = @"Multiple Choices";
    v9[15] = @"Moved Permanently";
    v8[16] = &unk_286AACA40;
    v8[17] = &unk_286AACA58;
    v9[16] = @"Found";
    v9[17] = @"See Other";
    v8[18] = &unk_286AACA70;
    v8[19] = &unk_286AACA88;
    v9[18] = @"Not Modified";
    v9[19] = @"Use Proxy";
    v8[20] = &unk_286AACAA0;
    v8[21] = &unk_286AACAB8;
    v9[20] = @"Switch Proxy";
    v9[21] = @"Temporary Redirect";
    v8[22] = &unk_286AACAD0;
    v8[23] = &unk_286AACAE8;
    v9[22] = @"Permanent Redirect";
    v9[23] = @"Bad Request";
    v8[24] = &unk_286AACB00;
    v8[25] = &unk_286AACB18;
    v9[24] = @"Unauthorized";
    v9[25] = @"Payment Required";
    v8[26] = &unk_286AACB30;
    v8[27] = &unk_286AACB48;
    v9[26] = @"Forbidden";
    v9[27] = @"Not Found";
    v8[28] = &unk_286AACB60;
    v8[29] = &unk_286AACB78;
    v9[28] = @"Method Not Allowed";
    v9[29] = @"Not Acceptable";
    v8[30] = &unk_286AACB90;
    v8[31] = &unk_286AACBA8;
    v9[30] = @"Proxy Authentication Required";
    v9[31] = @"Request Timeout";
    v8[32] = &unk_286AACBC0;
    v8[33] = &unk_286AACBD8;
    v9[32] = @"Conflict";
    v9[33] = @"Gone";
    v8[34] = &unk_286AACBF0;
    v8[35] = &unk_286AACC08;
    v9[34] = @"Length Required";
    v9[35] = @"Precondition Failed";
    v8[36] = &unk_286AACC20;
    v8[37] = &unk_286AACC38;
    v9[36] = @"Request Entity Too Large";
    v9[37] = @"Request URI Too Long";
    v8[38] = &unk_286AACC50;
    v8[39] = &unk_286AACC68;
    v9[38] = @"Unsupported Media Type";
    v9[39] = @"Requested Range Not Satisfiable";
    v8[40] = &unk_286AACC80;
    v8[41] = &unk_286AACC98;
    v9[40] = @"Expectation Failed";
    v9[41] = @"I'm a teapot";
    v8[42] = &unk_286AACCB0;
    v8[43] = &unk_286AACCC8;
    v9[42] = @"Misdirected Request";
    v9[43] = @"Unprocessable Entity";
    v8[44] = &unk_286AACCE0;
    v8[45] = &unk_286AACCF8;
    v9[44] = @"Locked";
    v9[45] = @"Failed Dependency";
    v8[46] = &unk_286AACD10;
    v8[47] = &unk_286AACD28;
    v9[46] = @"Too Early";
    v9[47] = @"Upgrade Required";
    v8[48] = &unk_286AACD40;
    v8[49] = &unk_286AACD58;
    v9[48] = @"Precondition Required";
    v9[49] = @"Too Many Requests";
    v8[50] = &unk_286AACD70;
    v8[51] = &unk_286AACD88;
    v9[50] = @"Request Header Fields Too Large";
    v9[51] = @"Unavailable For Legal Reasons";
    v8[52] = &unk_286AACDA0;
    v8[53] = &unk_286AACDB8;
    v9[52] = @"Internal Server Error";
    v9[53] = @"Not Implemented";
    v8[54] = &unk_286AACDD0;
    v8[55] = &unk_286AACDE8;
    v9[54] = @"Bad Gateway";
    v9[55] = @"Service Unavailable";
    v8[56] = &unk_286AACE00;
    v8[57] = &unk_286AACE18;
    v9[56] = @"Gateway Timeout";
    v9[57] = @"HTTP Version Not Supported";
    v8[58] = &unk_286AACE30;
    v8[59] = &unk_286AACE48;
    v9[58] = @"Variant Also Negotiates";
    v9[59] = @"Insufficient Storage";
    v8[60] = &unk_286AACE60;
    v8[61] = &unk_286AACE78;
    v9[60] = @"Loop Detected";
    v9[61] = @"Not Extended";
    v8[62] = &unk_286AACE90;
    v9[62] = @"Network Authentication Required";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:63];
    statusTexts = v2->_statusTexts;
    v2->_statusTexts = v3;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)statusText:(unint64_t)text
{
  statusTexts = self->_statusTexts;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:text];
  v5 = [(NSDictionary *)statusTexts objectForKey:v4];

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[MKHTTPStatusText sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __34__MKHTTPStatusText_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(MKHTTPStatusText);

  return MEMORY[0x2821F96F8]();
}

+ (id)statusText:(unint64_t)text
{
  v4 = +[MKHTTPStatusText sharedInstance];
  v5 = [v4 statusText:text];

  return v5;
}

@end