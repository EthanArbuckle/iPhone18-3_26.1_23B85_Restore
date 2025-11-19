@interface MFUserScriptLibrary
+ (id)userScripts;
@end

@implementation MFUserScriptLibrary

+ (id)userScripts
{
  if (userScripts_onceToken != -1)
  {
    +[MFUserScriptLibrary userScripts];
  }

  v3 = userScripts_userScripts;

  return v3;
}

void __34__MFUserScriptLibrary_userScripts__block_invoke()
{
  v10[3] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v10[0] = [v0 initWithBytes:"/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nfunction AttachmentElement(t){this.dom_element=t length:this.downloadableStatus=this.dom_element.getAttribute(_mf_downloadableStatus) encoding:{this.downloadingStatus=this.dom_element.getAttribute(_mf_downloadingStatus), this.shouldShowSaveButton=this.dom_element.getAttribute(_mf_show_save);var e=this;this.dom_element.onclick=function(t){0!=t.button||t.ctrlKey||e.onClick()}, this.dom_element.addEventListener(save, function(t){save==t.type&&(e.onSaveEvent(t), t.stopImmediatePropagation())}, !1)}function attachment_element_for_cid(t){var e=null, n=document.getElementById(t);let a=document.isInlineGenmojiEnabled, s=a&&n instanceof HTMLSourceElement&&n.parentElement instanceof HTMLPictureElement;if (n&&(attachment==n.tagName.toLowerCase()||img==n.tagName.toLowerCase()||s))e=new AttachmentElement(n);else{let s=a?img, picture > source:img;for (let a of document.querySelectorAll(s))if (a.src==cid:+t||a.srcset==cid:+t){e=new AttachmentElement(n=images[i]);break}}return e}function addClickHandlersForNodes(t, e){for (var n=0;n<t.length;n++){var a=t[n];e.push(new AttachmentElement(a))}}function updateAttachmentClickHandlers(){var t=[];return addClickHandlersForNodes(document.getElementsByTagName(attachment), t), addClickHandlersForNodes(document.getElementsByTagName(img), t), t}function simulate_download_attachment_for_cid(t){function e(){n.setState(ATTACHMENT_STATE.DEFAULT)}var n=attachment_element_for_cid(t);n.setState(ATTACHMENT_STATE.DOWNLOADING);var a=0, s=setInterval(function(){a+=.01, n.setProgress(a), a>=1&&(clearInterval(s), e())}, 1e3/30)}function set_state_for_attachment_cid(t, e){var n=attachment_element_for_cid(t);n&&n.setState(e)}function set_progress_for_attachment_cid(t, e){var n=attachment_element_for_cid(t);n&&n.setProgress(e)}var ATTACHMENT_STATE={DEFAULT:1, DOWNLOADABLE:2, DOWNLOADING:3};AttachmentElement.prototype={setState:function(t){if (t!=this.dom_element.getAttribute(_mf_state)){switch(this.dom_element.setAttribute(_mf_state, t), t){case ATTACHMENT_STATE.DEFAULT:this.dom_element.removeAttribute(action), this.dom_element.removeAttribute(progress), 1==this.shouldShowSaveButton&&this.dom_element.setAttribute(save, save);break;case ATTACHMENT_STATE.DOWNLOADABLE:this.dom_element.removeAttribute(save), this.dom_element.removeAttribute(progress), this.dom_element.setAttribute(action, this.downloadableStatus);break;case ATTACHMENT_STATE.DOWNLOADING:this.dom_element.removeAttribute(save), this.dom_element.setAttribute(action, this.downloadingStatus), this.dom_element.setAttribute(progress, 0.0)}this.dom_element.setAttribute(title, this.dom_element.getAttribute(title))}}, setProgress:function(t){this.dom_element.setAttribute(progress, t)}, onClick:function(){var t={element_id:this.dom_element.id, rect:getRectForElementWithID(this.dom_element.id)};window.webkit.messageHandlers.AttachmentNodeWasTapped.postMessage(t)}, onSaveEvent:function(t){var e=this.dom_element.saveButtonClientRect, n={element_id:t.target.id, rect:{x:e.x, y:e.y, width:e.width, height:e.height}};window.webkit.messageHandlers.AttachmentSaveWasTapped.postMessage(n)}};", kAttachmentViewSupportSourceLength, 4}];
  v1 = objc_alloc(MEMORY[0x277CCACA8]);
  v10[1] = [v1 initWithBytes:kMessageReformattingSource length:kMessageReformattingSourceLength encoding:4];
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v10[2] = [v2 initWithBytes:kMessageContentViewSource length:kMessageContentViewSourceLength encoding:4];
  v3 = [MEMORY[0x277CCAB68] string];
  for (i = 0; i != 3; ++i)
  {
    [v3 appendString:v10[i]];
  }

  v5 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:v3 injectionTime:1 forMainFrameOnly:0];
  v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v5, 0}];
  v7 = userScripts_userScripts;
  userScripts_userScripts = v6;

  for (j = 2; j != -1; --j)
  {
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end